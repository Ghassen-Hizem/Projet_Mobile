const mysql = require('mysql2')


const connection = mysql.createConnection({
  host: 'localhost',
  user: 'your username',
  password: 'random password',
  database: 'Collaboration_App'
})

connection.connect((err) =>{
    if(err){console.log(err)
    }
    else {
        console.log("connection suceeded");
    }
})

module.exports = connection;
