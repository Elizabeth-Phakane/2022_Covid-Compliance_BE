
//declaring variables

const express =require('express');
const bodyparser=require('body-parser');
const cors = require('cors');
const app=express();
const mysql=require('mysql2');






const router = express.Router();
const viewall = require('./routes/viewall');
const delete_user =  require('./routes/delete');
const add=require('./routes/add_user');
const view_user=require('./routes/view_user');
const update=require('./routes/update');
const login=require('./routes/login');
const update_officer=require('./routes/update_officer');
const login_officer=require('./routes/login_officer');
const records=require('./routes/get_all_records');
const officers=require('./routes/retrieve_all_officers');
const create_officer=require('./routes/create_officer');
const retrieve_entered_student=require('./routes/retrieve_entered_student');
const delete_officer=  require('./routes/delete_officer');
const login_admin=  require('./routes/login_admin');
const updateRecord=  require('./routes/updateRecord');
const insertRecord=  require('./routes/insertRecord');
const retrieve_officer=require('./routes/retrieve_officer');
const retrieve_all_form=require('./routes/retrieve_all_form');
const delete_image=require('./routes/delete_image');


//instantiating 
app.use(cors());
app.use(bodyparser.json());

//creating database connection

const db=mysql.createConnection({host:'localhost',user:'root',password:'',database:'covid_compliance',port:'3306'});

//check the database  connection

db.connect(err=>{
    if(err) {
        console.log(err,'dberr');}
        else{
            console.log('database connected.....');
        }
    

});




app.use('/viewall',viewall);
app.use('/delete',delete_user);
app.use('/view_user',view_user);
app.use('/add_user',add);
app.use('/update',update);
app.use('/login',login);
app.use('/update_officer',update_officer);
app.use('/login_officer',login_officer);
app.use('/get_all_records',records);
app.use('/retrieve_all_officers',officers);
app.use('/create_officer',create_officer);
app.use('/retrieve_entered_student',retrieve_entered_student);
app.use('/login_admin',login_admin);
app.use('/delete_officer',delete_officer);
app.use('/updateRecord',updateRecord);
app.use('/insertRecord',insertRecord);
app.use('/retrieve_officer',retrieve_officer);
app.use('/retrieve_all_form',retrieve_all_form);
app.use('/delete_image', delete_image);

//server
app.listen(3000,()=>{console.log('server running')})