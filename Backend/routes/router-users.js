const express = require("express");
const router = express.Router();


const {getUsers,getUser} =  require('../controllers/users.controller');


router.route('/').get(getUsers);

router.route('/user/:id').get(getUser);



module.exports = router;