const connection = require("../db");

const getProjects = (req,res) => {
    connection.execute(
        'SELECT * FROM `Projects` ',
        function(err,results) {
            res.status(200).json({success : true , data: results})
        }
        )
}

module.exports = getProjects