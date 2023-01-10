const connection = require("../db");

const getProjects = (req,res) => {
    connection.execute(
        'SELECT * FROM `Projects` ',
        function(err,results) {
            res.status(200).json({success : true , data: results})
        }
        )
}
const getProject = (req,res) => {
    const { id } = req.params;
        connection.execute(
            'SELECT * FROM `Projects` WHERE `ID_projet`=?',[id],
            function(err,results) {
                res.status(200).json({success : true , data: results})
            }
            )
    }

const getTasks = (req,res)=>{
    const { id } = req.params;
    connection.execute(
        'SELECT * FROM `Tache` WHERE `id_projet`=?',[id],
        function(err,results) {
            res.status(200).json({success : true , data: results})
        }
        )
}



module.exports = {
    getProjects,
    getProject,
    getTasks,

}

