//preamble
const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const fs = require("fs");
const cors = require("cors");
const routes = require("./routes");
const { aggregator } = require("./helpers");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(cors());

//helper for cross-origin access
const prepare = (req, res, next) => {
  //handle tokens eventually

  // res.set({'Content-Type':'application/json','Access-Control-Allow-Origin':'*'});
  next();
};

//allow for static asset serving, like html, css and js files
app.use(express.static("public"));

//HTML routes
app.get("/", routes.index);

//when you make changes in server.js the app restarts to make the changes live all the time (hard to stop that from happening)
app.get("/dropdown/:query", prepare, routes.dropdown); //define where the dropdown query goes to get the data

app.get("/dropdown2/:query", prepare, routes.dropdown2);

app.get("/text/:query/:query2", prepare, routes.getText);

app.get("/racedata/:query", prepare, routes.getRace);

// listen for requests :)
var listener = app.listen(process.env.PORT, async () => {
  console.log(`Your app is listening on port ${listener.address().port}`);
  // await aggregator()
});
//we don't need the aggregator, it's something Erin wrote so he can see where the database projects are, it gets them all together and shows him, I think it's kinda cute
