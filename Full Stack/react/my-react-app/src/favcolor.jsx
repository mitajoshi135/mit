import React, { Component, useState } from "react";
function Favcolor() {
    const [color, setcolor] = useState("black");
    return (
        <div>
            <h2 style={{ color: color }}>your selected color {color}</h2>
            <button onClick={() => setcolor("red")}>red</button>
            <button onClick={() => setcolor("blue")}>blue</button>
            <button onClick={() => setcolor("green")}>green</button>
            <button onClick={() => setcolor("orange")}>orange</button>
        </div>
    );
}
export default Favcolor;