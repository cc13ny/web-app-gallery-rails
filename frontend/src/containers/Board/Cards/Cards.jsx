import React, { useState } from 'react';
import PropTypes from 'prop-types';
import {useDrop} from 'react-dnd';
import { findDOMNode } from 'react-dom';

import Card from './DraggableCard';
import { CARD_HEIGHT, CARD_MARGIN, OFFSET_HEIGHT } from '../../../constants.js';

function getPlaceholderIndex(y, scrollY) {
  // shift placeholder if y position more than card height / 2
  const yPos = y - OFFSET_HEIGHT + scrollY;
  let placeholderIndex;
  if (yPos < CARD_HEIGHT / 2) {
    placeholderIndex = -1; // place at the start
  } else {
    placeholderIndex = Math.floor((yPos - CARD_HEIGHT / 2) / (CARD_HEIGHT + CARD_MARGIN));
  }
  return placeholderIndex;
}

// const specs = {
//   drop(props, monitor, component) {
//     document.getElementById(monitor.getItem().id).style.display = 'block';
//     const { placeholderIndex } = component.state;
//     const lastX = monitor.getItem().x;
//     const lastY = monitor.getItem().y;
//     const nextX = props.x;
//     let nextY = placeholderIndex;
//
//     if (lastY > nextY) { // move top
//       nextY += 1;
//     } else if (lastX !== nextX) { // insert into another list
//       nextY += 1;
//     }
//
//     if (lastX === nextX && lastY === nextY) { // if position equel
//       return;
//     }
//
//     props.moveCard(lastX, lastY, nextX, nextY);
//   },
//   hover(props, monitor, component) {
//     // defines where placeholder is rendered
//     const placeholderIndex = getPlaceholderIndex(
//       monitor.getClientOffset().y,
//       findDOMNode(component).scrollTop
//     );
//
//     // horizontal scroll
//     if (!props.isScrolling) {
//       if (window.innerWidth - monitor.getClientOffset().x < 200) {
//         props.startScrolling('toRight');
//       } else if (monitor.getClientOffset().x < 200) {
//         props.startScrolling('toLeft');
//       }
//     } else {
//       if (window.innerWidth - monitor.getClientOffset().x > 200 &&
//           monitor.getClientOffset().x > 200
//       ) {
//         props.stopScrolling();
//       }
//     }
//
//     // IMPORTANT!
//     // HACK! Since there is an open bug in react-dnd, making it impossible
//     // to get the current client offset through the collect function as the
//     // user moves the mouse, we do this awful hack and set the state (!!)
//     // on the component from here outside the component.
//     // https://github.com/gaearon/react-dnd/issues/179
//     component.setState({ placeholderIndex });
//
//     // when drag begins, we hide the card and only display cardDragPreview
//     const item = monitor.getItem();
//     document.getElementById(item.id).style.display = 'none';
//   }
// };

Cards.propTypes = {
  // connectDropTarget: PropTypes.func.isRequired,
  x: PropTypes.number.isRequired,
  cards: PropTypes.array.isRequired,
  moveCard: PropTypes.func.isRequired,
  isOver: PropTypes.bool,
  canDrop: PropTypes.bool,
  isScrolling: PropTypes.bool,
  startScrolling: PropTypes.func,
  stopScrolling: PropTypes.func
  // item: PropTypes.object
}

export default function Cards(props) {
  const [placeholderIndex, setPlaceholderIndex] = useState(-1);
  // const [isScrolling, setIsScrolling] = useState(false);

  const { x, cards, isOver, canDrop } = props;

  const [, drop] = useDrop({
    accept: 'card',
    drop: (dropItem, monitor) => {
      document.getElementById(monitor.getItem().id).style.display = 'block';
      const lastX = dropItem.x;
      const lastY = dropItem.y;
      const nextX = props.x;
      let nextY = placeholderIndex;

      if (lastY > nextY) { // move top
        nextY += 1;
      } else if (lastX !== nextX) { // insert into another list
        nextY += 1;
      }

      if (lastX === nextX && lastY === nextY) { // if position equal
        return;
      }

      props.moveCard(lastX, lastY, nextX, nextY);
    },
    hover: (hoverItem, monitor) => {
      // defines where placeholder is rendered
      const placeholderIndex = getPlaceholderIndex(
          monitor.getClientOffset().y,
          findDOMNode(monitor).scrollTop
      );

      // horizontal scroll
      if (props.isScrolling) {
        if (window.innerWidth - monitor.getClientOffset().x > 200 &&
            monitor.getClientOffset().x > 200
        ) {
          props.stopScrolling();
        }
      } else {
        if (window.innerWidth - monitor.getClientOffset().x < 200) {
          props.startScrolling('toRight');
        } else if (monitor.getClientOffset().x < 200) {
          props.startScrolling('toLeft');
        }
      }

      // // IMPORTANT!
      // // HACK! Since there is an open bug in react-dnd, making it impossible
      // // to get the current client offset through the collect function as the
      // // user moves the mouse, we do this awful hack and set the state (!!)
      // // on the component from here outside the component.
      // // https://github.com/gaearon/react-dnd/issues/179
      // component.setState({ placeholderIndex });

      // when drag begins, we hide the card and only display cardDragPreview
      // const item = monitor.getItem();
      document.getElementById(hoverItem.id).style.display = 'none';
    },
    collect: (monitor) => ({
      isOver: monitor.isOver(),
      canDrop: monitor.canDrop()
    })
  })

  let isPlaceHold = false;
  let cardList = [];

  cards.forEach((card, i) => {
    if (isOver && canDrop) {
      isPlaceHold = false;
      if (i === 0 && placeholderIndex === -1) {
        cardList.push(<div key="placeholder" className="item placeholder" />);
      } else if (placeholderIndex > i) {
        isPlaceHold = true;
      }
    }
    if (card !== undefined) {
      cardList.push(
        <Card x={x} y={i}
          item={card}
          key={card.id}
          stopScrolling={props.stopScrolling}
        />
      );
    }
    if (isOver && canDrop && placeholderIndex === i) {
      cardList.push(<div key="placeholder" className="item placeholder" />);
    }
  });

  // if placeholder index is greater than array.length, display placeholder as last
  if (isPlaceHold) {
    cardList.push(<div key="placeholder" className="item placeholder" />);
  }

  // if there is no items in cards currently, display a placeholder anyway
  if (isOver && canDrop && cards.length === 0) {
    cardList.push(<div key="placeholder" className="item placeholder" />);
  }

  return (
    <div className="desk-items" ref={drop}>
      {cardList}
    </div>
  );
}

// export default DropTarget('card', specs, (connectDragSource, monitor) => ({
//   connectDropTarget: connectDragSource.dropTarget(),
//   isOver: monitor.isOver(),
//   canDrop: monitor.canDrop(),
//   item: monitor.getItem()
// }))(Cards)