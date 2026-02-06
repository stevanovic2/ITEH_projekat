const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Server radi!");
});

app.listen(3000, () => {
  console.log("Server pokrenut na portu 3000");
});
