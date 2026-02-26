import { createContext, useContext, useState } from "react";

const UniContext = createContext();

function University() {
  const [uni, setUser] = useState("CVM");

  return (
    <UniContext.Provider value={uni}>
      <h1>{`Hello ${uni}!`}</h1>
      <Institute />
    </UniContext.Provider>
  );
}

function Institute() {
  return (
    <>
      <h1>Institute</h1>
      <Department/>
    </>
  );
}

function Department() {
  const uni = useContext(UniContext);
  return (
    <>
      <h1>Department</h1>
      <h2>{`I am studying in ${uni} University`}</h2>
    </>
  );
}

export default University;
