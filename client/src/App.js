import logo from './logo.svg';
import React from 'react';
import './App.css';

function Board()  {
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
    return (
        <div className="board">
            {
                lists.map((list) =>
                    <div className="list-wrapper">
                        <div className="list">
                            <div className="list-header">{list.id}</div>
                            <div className="list-cards">
                                {
                                    list.cards.map((card) =>
                                        <div className="list-card">
                                            {card}
                                        </div>
                                    )
                                }
                            </div>
                        </div>
                    </div>
                )
            }
        </div>
    )
}

function App() {
  return (
    <div className="App">
      <Board />
    </div>
  );
}

export default App;
