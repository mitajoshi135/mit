function Feedback(props) {
  return (
    <table border="1">
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Details</th>
          <th>Rating</th>
        </tr>
        <tr>
          <td>{props.id}</td>
          <td>{props.title}</td>
          <td>{props.details}</td>
          <td>{props.rating}</td>
        </tr>
    </table>
  );
}

export default Feedback;
