const express = require("express");
const router = express.Router();


const getProjects =  require('../controllers/projects.controller')


router.route('/').get(getProjects);



module.exports = router;