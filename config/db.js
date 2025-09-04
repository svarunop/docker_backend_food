const mysql = require('mysql2');
require('dotenv').config();

const db = mysql.createConnection(process.env.DATABASE_URL);

db.connect(err => {
  if (err) throw err;
  console.log('Connected to the database!');
});

module.exports = db;
