const NewFruit = (props) => {
    let formFields = {}

    return(
        <form onSubmit={(e) => { props.handleFormSubmit(formFields.name.value, formFields.description.value); e.target.reset(); }}>
            <div className="col-sm-5">
                <div className="form-group">
                    <label htmlFor="inputName" className="sr-only">Name</label>
                    <input ref={input => formFields.name = input} type="text" className="form-control" id="inputName" placeholder="Enter the name of the item"/>
                </div>
            </div>
            <div className="col-sm-5">
                <div className="form-group">
                    <label htmlFor="inputDescription" className="sr-only">Description</label>
                    <input ref={input => formFields.description = input} type="text" className="form-control" id="inputDescription" placeholder="Enter a description"/>
                </div>
            </div>
            <div className="col-sm-2">
                <button type="submit" className="btn btn-default btn-block">Submit</button>
            </div>
        </form>
    )
}