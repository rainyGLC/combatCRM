const UserModel = require('./../models/user.js');
const User = new UserModel;
const {formatTime} = require('./../utils/data.js');

const userController ={
  insert:async function(req,res,next){
    let name = req.body.name;
    let phone = req.body.phone;
    let password = req.body.password;
    let role = req.body.role;
    let create_time=new Date();
    console.log(create_time);
    if(!name || !phone || !password || !role){
      res.json({code:0,data:'params empty!'});
      return
    }
    try{
      const users = await User.insert({name,phone,password,role,create_time})
      res.json({code:200,data:users})
    }catch(e){
      console.log(e);
      res.json({code:0,data:e})
    }
  },
  show:async function(req,res,next){
    try{
      const users = await User.all();
      res.locals.users=users.map((data)=>{
        data.create_time_display=formatTime(data.create_time);
        return data
      })
      res.render('admin/user.tpl',res.locals)
    }catch(e){
      res.locals.error=e;
      res.render('error',res.locals);
    }
  },
  renderEdit:async function(req,res,next){
    try{
      const id = req.params.id;
      console.log(id);
      const users=await User.select({id});
      res.locals.user=users[0];
      res.render('admin/user_edit.tpl',res.locals);
    }catch(e){
      res.locals.error=e;
      res.render("error",res.locals);
    }
  },
  update:async function(req,res,next){
    let id =req.params.id
    console.log(id);
    let name=req.body.name;
    let phone=req.body.phone;
    let password=req.body.password;
    let role=req.body.role;
    if(!name ||!phone || !password ||!role){
      res.json({code:0,data:'params is empty!'});
      return
    }
    try{
      const users =await User.update(id,{name,phone,password,role});
      res.json({code:200,data:users})
    }catch(e){
      console.log(e);
      res.json({code:0,data:e})
    }
  },
  renderPage:async function(req,res,next){
    res.render('admin/user_create.tpl',res.locals)
  }
}
module.exports=userController;
