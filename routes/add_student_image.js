const express =require('express');
const bodyparser=require('body-parser');
const cors = require('cors');
const mysql=require('mysql2');
const router = express.Router();
const app=express();
module.exports = router;

app.use(cors());
app.use(bodyparser.json());

const database=require('./database');
const multer = require('multer'); //npm install multer
const path =require('path');  // npm install path

var storage = multer.diskStorage({
    destination: (req, file, callBack) => {
        callBack(null, './public/images/')     // './public/images/' directory name where save the file and create those to folders
    },
    filename: (req, file, callBack) => {
        callBack(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
    }
})
 var upload = multer({
    storage: storage
});
 

router.post("/user",upload.single('profile_pic'), (req, res) => {

    let User_id = req.body.User_id;
    let Camp_id = req.body.Camp_id;
    let First_name = req.body.First_name;
    let Last_name = req.body.Last_name;
    let Gender =req.body.Gender;
    let Type = req.body.Type;
    let Cellphone_number = req.body.Cellphone_number;
    let Email = req.body.Email;
    let Password = req.body.Password;
    let profile_pic=req.imgsrc;

    if (!req.file) {
        console.log("No file upload");
    } else {
        console.log(req.file.filename)
        var imgsrc = 'http://3000/image/' + req.file.filename
        var insertData = `INSERT INTO user(User_id,Camp_id,First_name,Last_name,Gender,Type,Cellphone_number,Email,Password,profile_pic )VALUES('${User_id}','${Camp_id},'${First_name}','${Last_name}','${Gender}','${Type}','${Cellphone_number}','${Email}','${Password}','${imgsrc}`
        database.query(insertData, [imgsrc], (err, result) => {
            if (err) throw err
    
            console.log("file uploaded")
        })
    }
});
