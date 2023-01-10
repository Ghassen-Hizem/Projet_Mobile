const mysql = require('mysql2')


const connection = mysql.createConnection({
  host: 'localhost',
  user: 'debian-sys-maint',
  password: 'Vs92Sp4nxNuXeuoP',
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
