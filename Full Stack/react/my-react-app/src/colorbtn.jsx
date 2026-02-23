import React,{Component} from "react";
class Colorbtn extends Component{
    constructor(props){
        super(props);
            this.state={
                selectedColor:"black"

            };
        }
        handleClick=(color)=>{
            this.setState({selectedColor:color});
        };
        render(){
            return(
                <div>
                    <h2 style={{color:this.state.selectedColor}}>your selected color</h2>
                    <button onClick={()=>this.handleClick("red")}>red</button>
                    <button onClick={()=>this.handleClick("blue")}>blue</button>
                    <button onClick={()=>this.handleClick("green")}>green</button>
                    <button onClick={()=>this.handleClick("orange")}>orange</button>
                </div>
            );
        }
    }

export default Colorbtn;