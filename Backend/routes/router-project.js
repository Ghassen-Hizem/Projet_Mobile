const express = require("express");
const router = express.Router();


const {getProjects,getProject, getTasks} =  require('../controllers/projects.controller')


router.route('/').get(getProjects);



router.route('/project/:id').get(getProject);

router.route('/project/tasks/:id').get(getTasks);

module.exports = router;