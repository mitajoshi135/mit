import React from "react";
class Counter extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            count: 0
        };
    }
    increment = () => {
        this.setState(prevState => ({
            count: prevState.count + 1
        }));
    };
    decrement = () => {
        this.setState(prevState => ({
            count: prevState.count - 1
        }));
    };
    render() {
        return (
            <div>
                <h1>Counter</h1>
                <p>Current Count: {this.state.count}</p>
                <button onClick={this.increment}>+</button>
                <button onClick={this.decrement}>-</button>
            </div>
        );
    }
}
export default Counter;



// import React, { useState } from "react";

// function Counter() {
//   const [count, setCount] = useState(0);

//   return (
//     <div>
//       <h1>Counter</h1>
//       <p>Current Count: {count}</p>
//       <button onClick={() => setCount(count + 1)}>+</button>
//       <button onClick={() => setCount(count - 1)}>-</button>
//     </div>
//   );
// }

// export default Counter;
