
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

  let User_id=req.body.User_id;
  let vstatus =req.body.vstatus;
  let covid19 =req.body.covid19;
  let recentCough =req.body.recentCough;
  let difficultyBreathing=req.body.difficultyBreathing;
  let lossOfTaste=req.body.lossOfTaste;
  let heavyHeadache=req.body.heavyHeadache;
  let infectedPerson=req.body.infectedPerson;
  let status;
  let Form_check;
//sending the variables to the database

if(vstatus==="No" && covid19==="No" && recentCough==="No" && difficultyBreathing==="No" && lossOfTaste==="No" && heavyHeadache==="No" && infectedPerson==="No"){
status="GOOD";
Form_check="Yes" ; 
}
if(vstatus==="No" && covid19==="Yes" && recentCough==="No" && difficultyBreathing==="No" && lossOfTaste==="No" && heavyHeadache==="No" && infectedPerson==="No"){
    status="DANGEROUS";
    Form_check="Yes" ;   
    }
    if(vstatus==="Yes" && covid19==="No" || recentCough==="Yes" || difficultyBreathing==="Yes" || lossOfTaste==="Yes" || heavyHeadache==="Yes" || infectedPerson==="Yes"){
        status="WARNING";
        Form_check="Yes" ;    
        }

 

let qr=`insert into healthForm(User_id,Vaccination_status,Covid19,Recent_cough,Difficult_breath,Weight_lose,Headache,Infected_person,Form_check,Status) values('${User_id}','${vstatus}','${covid19}','${recentCough}','${difficultyBreathing}','${lossOfTaste}','${heavyHeadache}','${infectedPerson}','${Form_check}','${status}')`;

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

