const AllFruits = (props) => {
    var fruits = props.fruits.map((fruit) => {
        return(
            <div className="col-xs-3">
                <div className="panel panel-success" key={fruit.id}>
                    <div className="panel-heading" >
                        <h1 className="panel-title">{fruit.name}</h1>
                    </div>
                    <div className="panel-body" >
                        <p>{fruit.description}</p>
                    </div>
                </div>
            </div>
        )
    });

    return(
        <div>
            {fruits}
        </div>
    )
};