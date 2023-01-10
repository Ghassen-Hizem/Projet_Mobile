const connection = require("../db");

const getUsers = (req,res) => {
    connection.execute(
        'SELECT * FROM `User`',function(err,results,fields){
            res.status(200).json({ success: true, data: results })
        }
    )
}

const getUser = (req,res) => {
    const { id } = req.params;
    connection.execute(
        'SELECT * FROM `User` WHERE `ID`=?',[id],
        function(err,results) {
            res.status(200).json({success : true , data: results})
        }
        )
}





module.exports = {
    getUsers,
    getUser,
    
}