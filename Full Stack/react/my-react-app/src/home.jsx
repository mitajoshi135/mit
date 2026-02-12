import Header from "./header";
import Menu from "./menu";
import Content from "./content";
import Footer from "./footer";

function Home() {
  return (
    <table border='2'>
        <tr ><td colspan='2'>
    <Header header="this is Header"/></td></tr>
    <tr><td><Menu menu="this is Menu"/></td><td>
    <Content content="this is Content"/></td></tr>
    <tr ><td colspan='2'><Footer footer="this is Footer"/></td></tr>
    </table>
  );
}

export default Home;