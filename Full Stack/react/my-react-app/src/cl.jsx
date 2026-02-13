import React from "react";
class Student extends React.Component {
    constructor() {
        super();
        this.state = {
            rno: "007",
            name: "Thor",
            course: "MCA"
        };
    }

    render() {
        return (
            <>
                <h3>Roll No: {this.state.rno}</h3>
                <h3>Name: {this.state.name}</h3>
                <h3>Course: {this.state.course}</h3>
            </>
        );
    }
}

export default Student;
