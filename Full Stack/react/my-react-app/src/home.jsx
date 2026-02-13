import Header from "./header";
import Menu from "./menu";
import Content from "./content";
import Footer from "./footer";

function Home() {
  return (
    
    <table width='100%' border='2' height='780px' >
    <tr ><td colspan='4'>
    <Header header="Header"/></td></tr>
    <tr><td colspan='1'><Menu menu="Menu"/></td><td colspan='3'>
    <Content content="Content"/></td></tr>
    <tr ><td colspan='4'>
    <Footer footer="Footer"/></td></tr>
    </table>
  );
}

export default Home;