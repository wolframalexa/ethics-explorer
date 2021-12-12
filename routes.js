const fs = require("fs");
const sqlite3 = require("sqlite3").verbose();
const dbFile = "./data/ethics.db";
global.ethicsdb = new sqlite3.Database(
  dbFile,
  console.log("connected to the database")
);

// node backend

//set up static route for loading index.html
exports.index = async (req, res) => {
  return res.sendFile(__dirname + "/views/index.html");
};

exports.dropdown = async (req, res, next) => {
  //:query is req.params.query
  let dropdownOptions = [];
  let mid = req.params.query;
  let sql = `SELECT industries.iid, industries.iname, majors.start_salary 
             FROM industries, matches, majors
             WHERE matches.iid = industries.iid and matches.mid = ${mid} and majors.mid = ${mid}`;

  let results = "";
  let promised_results = {};

  global.ethicsdb.all(sql, (err, row) => {
    if (err) {
      throw err;
    } else {
      results = `${JSON.stringify(row)}`;
      var parsedResults = JSON.parse(results);
      console.log(parsedResults);
      return res.send(parsedResults);
    }
  });
};

exports.dropdown2 = async (req, res, next) => {
  let dropdownOptions2 = [];
  // let aid = req.params.query;
  let iid = req.params.query;
  let sql = `SELECT areas.areaid, areas.areaname from texts, areas where texts.areaid = areas.areaid and texts.iid = ${iid}`;

  let results = "";
  let promised_results = {};

  global.ethicsdb.all(sql, (err, row) => {
    if (err) {
      throw err;
    } else {
      results = `${JSON.stringify(row)}`;
      var parsedResults = JSON.parse(results);
      // dropdownOptions2 = parsedResults;
      return res.send(parsedResults);
    }
  });
};

exports.getText = async (req, res, next) => {
  let areaid = req.params.query;
  let iid = req.params.query2;
  let sql = `SELECT texts.exp_text, industries.perc_women, industries.perc_union, texts.url1, texts.url2, texts.url3
             FROM texts, industries 
             WHERE texts.areaid = ${areaid} and texts.iid = ${iid} and industries.iid=${iid}`;

  global.ethicsdb.all(sql, (err, row) => {
    if (err) {
      throw err;
    } else {
      let results = `${JSON.stringify(row)}`;
      var parsedResults = JSON.parse(results);
      return res.send(parsedResults);
    }
  });
};

exports.getRace = async (req, res, next) => {
  let iid = req.params.query;
  let sql = `SELECT perc_white, perc_black, perc_asian, perc_hisp_latino
             FROM race
             WHERE race.iid = ${iid}`;

  global.ethicsdb.all(sql, (err, row) => {
    if (err) {
      throw err;
    } else {
      let results = `${JSON.stringify(row)}`;
      var parsedResults = JSON.parse(results);
      return res.send(parsedResults);
    }
  });
};
