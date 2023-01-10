const express = require("express");

const app = express();

const port = 3000;



const auth = require('./routes/router-auth');
const users = require('./routes/router-users');
const projects = require('./routes/router-project');


app.use(express.urlencoded({ extended: false }))
app.use(express.json())

//app.use('/auth',auth);
app.use('/users',users);

app.use('/projects',projects)




app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })


