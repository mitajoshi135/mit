function Item(props) {
  return (
    <table border="1">
      
        <tr>
          <th>Name</th>
          <th>Type</th>
          <th>Cost</th>
        </tr>
        <tr>
          <td>{props.name}</td>
          <td>{props.type}</td>
          <td>{props.cost}</td>
        </tr>
      
    </table>
  );
}
export default Item;