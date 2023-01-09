const express = require("express");

const app = express();

const port = 3000;

const config = require("./db");

app.get('/users', (req, res) => {
    res.send('Hello World!')
  })

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })

