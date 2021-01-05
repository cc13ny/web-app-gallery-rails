import React from 'react';
import PropTypes from 'prop-types';
// import { DropTarget, DragSource } from 'react-dnd';
import { useDrag, useDrop } from 'react-dnd';

import Cards from './Cards';

// const listSource = {
//   beginDrag(props) {
//     return {
//       id: props.id,
//       x: props.x
//     };
//   },
//   endDrag(props) {
//     props.stopScrolling();
//   }
// };

// const listTarget = {
//   canDrop() {
//     return false;
//   },
//   hover(props, monitor) {
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
//     const { id: listId } = monitor.getItem();
//     const { id: nextX } = props;
//     if (listId !== nextX) {
//       props.moveList(listId, props.x);
//     }
//   }
// };

const LIST_TYPE = "list";

CardsContainer.propTypes = {
  // connectDropTarget: PropTypes.func.isRequired,
  // connectDragSource: PropTypes.func.isRequired,
  moveCard: PropTypes.func.isRequired,
  moveList: PropTypes.func.isRequired,
  startScrolling: PropTypes.func,
  stopScrolling: PropTypes.func,
  x: PropTypes.number,
  item: PropTypes.object,
  isDragging: PropTypes.bool,
  isScrolling: PropTypes.bool
}

export default function CardsContainer(props) {
  const { x, item, moveCard } = props;

  const [{isDragging}, drag] = useDrag({
    item: { type: LIST_TYPE },
    // beginDrag: monitor => { return {id: this.props.id, x: this.props.x} },
    // endDrag: (item, monitor) => { this.props.stopScrolling() },
    collect: monitor => ({
      isDragging: !!monitor.isDragging(),
    }),
  })

  const [, drop] = useDrop({
    accept: LIST_TYPE,
    hover: (hoverItem, monitor) => {
      if (hoverItem.isScrolling) {
        if (window.innerWidth - monitor.getClientOffset().x > 200 &&
            monitor.getClientOffset().x > 200
        ) {
          hoverItem.stopScrolling();
        }

      } else {
        if (window.innerWidth - monitor.getClientOffset().x < 200) {
          hoverItem.startScrolling('toRight');
        } else if (monitor.getClientOffset().x < 200) {
          hoverItem.startScrolling('toLeft');
        }
      }
      const { id: listId } = monitor.getItem();
      const { id: nextX } = item;
      if (listId !== nextX) {
        item.moveList(listId, item.x);
      }
    },
    canDrop: () => { return false; },
    collect: (monitor) => ({
      isOver: !!monitor.isOver(),
      canDrop: !!monitor.canDrop()
    })
  })

  const opacity = isDragging ? 0.5 : 1;

  return (
      <div className="desk" ref={drag} style={{ opacity }}>
        <div className="desk-head">
          <div className="desk-name">{item.name}</div>
        </div>
        <Cards
            ref={drop}
            x={x}
            cards={item.cards}
            moveCard={moveCard}
            startScrolling={this.props.startScrolling}
            stopScrolling={this.props.stopScrolling}
            isScrolling={this.props.isScrolling}
        />
      </div>
  );




  // return connectDragSource(connectDropTarget(
  //   <div className="desk" style={{ opacity }}>
  //     <div className="desk-head">
  //       <div className="desk-name">{item.name}</div>
  //     </div>
  //     <Cards
  //       moveCard={moveCard}
  //       x={x}
  //       cards={item.cards}
  //       startScrolling={this.props.startScrolling}
  //       stopScrolling={this.props.stopScrolling}
  //       isScrolling={this.props.isScrolling}
  //     />
  //   </div>
  // ));

}

// DropTarget('list', listTarget, connectDragSource => ({
//   connectDropTarget: connectDragSource.dropTarget(),
// }))(
//
//
// DragSource('list', listSource, (connectDragSource, monitor) => ({
//   connectDragSource: connectDragSource.dragSource(),
//   isDragging: monitor.isDragging()
// })))(CardsContainer)
