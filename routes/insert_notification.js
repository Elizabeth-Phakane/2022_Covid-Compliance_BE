
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


router.post('/user',(req,res)=>{

    
   
    console.log(req.body,'formData');

    //instatiating user variables
  let Feed_id=req.body.Feed_id;
  let User_id=req.body.User_id;
  let Camp_id=req.body.Camp_id;
  let comment =req.body.comment;
 
//sending the variables to the database

let qr=`insert into feedback(Feed_id,User_id,Camp_id,comment) values('${Feed_id}','${User_id}',${Camp_id},'${comment}')`;

database.query(qr,(err,result)=>{

    if(err){console.log(err);}
   console.log(result,'result')

        res.send({
            message:'data inserted'
        });
        
        res.send({message:'data Not inserted'});

});

const render = res.render;
    const send = res.send;
    res.render = function renderWrapper(...args) {
        Error.captureStackTrace(this);
        return render.apply(this, args);

    };

    res.send = function sendWrapper(...args) {
        try {
            send.apply(this, args);
        } catch (err) {
            console.error(`Error in res.send | ${err.code} | ${err.message} | ${res.stack}`);
        }
    };


    //next();

});

