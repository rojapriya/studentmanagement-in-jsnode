const express = require("express");
const exphbs=require("express-handlebars");
const bodyParser=require("body-parser");
const mysql= require("mysql");
const Connection = require("mysql/lib/Connection");

require('dotenv').config();

const app=express();
const port = process.env.PORT || 5002;

app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());

//static files
app.use(express.static("public"));

//template 
const handlebars = exphbs.create({extname:".hbs"});
app.engine('hbs',handlebars.engine);
app.set("view engine","hbs");

//mysql
// const con = mysql.createPool({
// connectionLimit: 10,
// host : process.env.DB_HOST,
// user : process.env.DB_USER,
// password : process.env.DB_PASS,
// database : process.env.DB_NAME
// });

// //checkdb
// con.getConnection((err,connection)=>{
//     if(err) throw err
//     console.log("Connection Sucess");
// });



const routes = require("./server/routes/students");
app.use('/',routes);

//listen
 app.listen(port,()=>{
    console.log("Listening Port : "+port);
 });
