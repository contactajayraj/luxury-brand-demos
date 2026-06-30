const express = require("express");
const path    = require("path");
const app     = express();

app.use(express.static(path.join(__dirname, "public")));
app.get("/", (req, res) => res.sendFile(path.join(__dirname, "public/index.html")));
app.listen(3002, () => console.log("LUXE TEA running at http://localhost:3002"));
