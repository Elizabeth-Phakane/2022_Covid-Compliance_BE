const express =require('express');
const router = express.Router();
const app=express();
module.exports = router;

const database=require('./database');



router.get('/states/flue',(req,res)=>{
    
     let sql = 'select COUNT(formId)Total from healthForm where recentCough="yes"';

    database.query(sql,(err,result)=>{
         if (err){
            console.log(err,'oops no data retrived');

         }
         if(result.length>0){
             res.send({
             message: 'all user data',
             data:result
             })
            
             console.log(result);
             
         }
     });

});

router.get('/states/totpl',(req,res)=>{
    
    let sql = 'select COUNT(User_id)Students from user';

   database.query(sql,(err,result)=>{
        if (err){
           console.log(err,'oops no data retrived');

        }
        if(result.length>0){
            res.send({
            message: 'all user data',
            data:result
            })
           
            console.log(result);
            
        }
    });

});
