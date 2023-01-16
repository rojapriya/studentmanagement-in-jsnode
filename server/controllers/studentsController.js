const mysql= require("mysql");

const con = mysql.createPool({
    connectionLimit: 10,
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password : process.env.DB_PASS,
    database : process.env.DB_NAME
    });
    
exports.view=(req,res)=>{

    con.getConnection((err,connection)=>{
            if(err) throw err
            connection.query("select * from stddetails",(err,rows)=>{
                connection.release();
                if(!err){

                    res.render("home",{rows});
                  }else{
                    console.log("error in listing data "+err);
                  }
            });
        });
        
    
};
exports.adduser = (req,res)=>{
    res.render("adduser");
}
exports.save = (req,res)=>{

con.getConnection((err,connection)=>{
    if(err) throw err

    const{firstname,lastname,location,email,dob,education}=req.body;
    connection.query("insert into stddetails (firstname,lastname,location,email,dob,education) values (?,?,?,?,?,?)",[firstname,lastname,location,email,dob,education],(err,rows)=>{
        connection.release();
        if(!err){

            res.render("adduser",{msg:"User Details Added success"});
          }else{
            console.log("error in listing data "+err);
          }
    });
});
}


exports.edituser = (req,res)=>{
    con.getConnection((err,connection)=>{
        if(err) throw err
        //get id form url
let id=req.params.id;


        connection.query("select * from stddetails where id=?",[id]
        ,(err,rows)=>{
            connection.release();
            if(!err){

                res.render("edituser",{rows});
              }else{
                console.log("error in listing data "+err);
              }
        });
    });
  
}

exports.edit = (req,res)=>{

    con.getConnection((err,connection)=>{
        if(err) throw err
    
        const{firstname,lastname,location,email,dob,education}=req.body;
        let id=req.params.id;


        connection.query("update stddetails set firstname=?,lastname=?,location=?,email=?,dob=?,education=? where id=?",[firstname,lastname,location,email,dob,education,id],(err,rows)=>{
            connection.release();
            if(!err){

                con.getConnection((err,connection)=>{
                    if(err) throw err
                    //get id form url
            let id=req.params.id;
            
            
                    connection.query("select * from stddetails where id=?",[id]
                    ,(err,rows)=>{
                        connection.release();
                        if(!err){
            
                            res.render("edituser",{rows,msg:"User Details updated success"});
                          }else{
                            console.log("error in listing data "+err);
                          }
                    });
                });
                
    
              }else{
                console.log("error in listing data "+err);
              }
        });
    });
}


exports.delete=(req,res)=>{
    con.getConnection((err,connection)=>{
        if(err) throw err

        let id=req.params.id;
        connection.query("delete from stddetails where id=?",[id],
        (err,rows)=>{
            connection.release();
            if(!err){
                res.redirect("/");

            }else{
                console.log(err);
            }

        });
    });
};

