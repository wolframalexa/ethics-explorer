const fetch = require("node-fetch");

exports.cleanseString = str => {
  return str.replace(/</g, "&lt;").replace(/>/g, "&gt;");
};

exports.isValidJSON = str => {
  try {
    JSON.parse(str);
  } catch (e) {
    return false;
  }
  return true;
};

