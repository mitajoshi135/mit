import Item from "./item";
import Feedback from "./feedback";

function ItemDetail() {
  return (
    <>
      <Item name="Ring" type="Jewellery" cost="100" />
      <Feedback id="01" title="Gold Ring" details="24K Gold" rating="10" />

          </>
  );
}

export default ItemDetail;
