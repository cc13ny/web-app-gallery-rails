import React from 'react';
import PropTypes from 'prop-types';

// Redux
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';

// React-DnD
import { DndProvider } from 'react-dnd'
import { HTML5Backend } from 'react-dnd-html5-backend';


import * as ListsActions from '../../actions/lists';
import CardsContainer from './Cards/CardsContainer';
// import CustomDragLayer from './CustomDragLayer';


// const mapDispatchToProps = dispatch => {
//   return {
//     // dispatching plain actions
//     increment: () => dispatch({ type: 'INCREMENT' }),
//     decrement: () => dispatch({ type: 'DECREMENT' }),
//     reset: () => dispatch({ type: 'RESET' })
//   }
// }

class Board extends React.Component {
  static propTypes = {
    getLists: PropTypes.func.isRequired,
    moveCard: PropTypes.func.isRequired,
    moveList: PropTypes.func.isRequired,
    lists:    PropTypes.array.isRequired
  }

  constructor(props) {
    super(props);
    this.moveCard = this.moveCard.bind(this);
    this.moveList = this.moveList.bind(this);
    this.findList = this.findList.bind(this);
    this.scrollRight = this.scrollRight.bind(this);
    this.scrollLeft = this.scrollLeft.bind(this);
    this.stopScrolling = this.stopScrolling.bind(this);
    this.startScrolling = this.startScrolling.bind(this);
    this.state = { isScrolling: false };
  }

  componentDidMount() {
    this.props.getLists(10);
  }

  startScrolling(direction) {
    // if (!this.state.isScrolling) {
    switch (direction) {
      case 'toLeft':
        this.setState({ isScrolling: true }, () => this.scrollLeft());
        break;
      case 'toRight':
        this.setState({ isScrolling: true }, () => this.scrollRight());
        break;
      default:
        break;
    }
    // }
  }

  stopScrolling() {
    this.setState({ isScrolling: false }, () => clearInterval(this.scrollInterval));
  }

  scrollRight() {
    function scroll() {
      document.getElementsByTagName('main')[0].scrollLeft += 10;
    }
    this.scrollInterval = setInterval(scroll, 10);
  }

  scrollLeft() {
    function scroll() {
      document.getElementsByTagName('main')[0].scrollLeft -= 10;
    }
    this.scrollInterval = setInterval(scroll, 10);
  }

  moveCard(lastX, lastY, nextX, nextY) {
    this.props.moveCard(lastX, lastY, nextX, nextY);
  };

  moveList(listId, nextX) {
    const { lastX } = this.findList(listId);
    this.props.moveList(lastX, nextX);
  };

  findList(id) {
    const { lists } = this.props;
    const list = lists.find(l => l.id === id);

    return {
      list,
      lastX: lists.indexOf(list)
    };
  };

  render() {
    const { lists } = this.props;
    console.log(lists);

    return (
        <DndProvider backend={HTML5Backend}>
          <div style={{ height: '100%' }}>
            {/*<CustomDragLayer snapToGrid={false} />*/}
            {lists.map((item, i) =>
              <CardsContainer
                  key={item.id}
                  id={item.id}
                  item={item}
                  moveCard={this.moveCard}
                  moveList={this.moveList}
                  startScrolling={this.startScrolling}
                  stopScrolling={this.stopScrolling}
                  isScrolling={this.state.isScrolling}
                  x={i}
              />
            )}
          </div>
        </DndProvider>
    );
  }
}

const mapStateToProps = state => ({ lists: state.lists })
const mapDispatchToProps = dispatch => {
  return bindActionCreators(ListsActions, dispatch);
}
export default connect(mapStateToProps, mapDispatchToProps)(Board)