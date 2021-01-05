import React from 'react';
import './App.css';

function Card(props) {
    const { card } = props;
    return (
        <div className="list-card">
            {card}
        </div>
    )
}

function CardList(props)  {
    const { list } = props;
    return (
        <div className="list-wrapper">
            <div className="list">
                <div className="list-header">{list.id}</div>
                <div className="list-cards">
                    {
                        list.cards.map((card) =>
                            <Card card={card} />
                        )
                    }
                </div>
            </div>
        </div>
    )
}

function Board(props)  {
    const { lists } = props;
    return (
        <div className="board">
            {
                lists.map((list) =>
                    <CardList list={list}/>
                )
            }
        </div>
    )
}

const lists = [
    {
        id: "1 22222222222222222222222222222222",
        cards: ["1 22222222222222222222222222222222", "2"]
    },
    {
        id: "1",
        cards: [
            "3", "2", "1", "1", "3",
            "2", "1", "1", "3", "2",
            "1", "1", "3", "2", "1",
            "1", "1", "3", "2", "1",
            "3", "2", "1", "1", "3",
            "2", "1", "1", "3", "2",
            "1", "1", "3", "2", "1",
            "1", "1", "3", "2", "1",
        ]
    },
    {
        id: "2",
        cards: ["4", "2"]
    },
    {
        id: "3",
        cards: ["5", "2"]
    }
]

function App() {
  return (
    <div className="App">
      <Board lists={lists} />
    </div>
  );
}

export default App;
