const ClueModel = require('./../models/clue.js');
const Clue = new ClueModel;
const RecordModel = require('./../models/record.js');
const Record = new RecordModel;
const UserModel = require('./../models/user.js');
const User = new UserModel;
const {formatTime} = require('./../utils/formatTime.js');


const clueController ={
  insert:async function(req,res,next){
    let name = req.body.name;
    console.log(name)
    let phone = req.body.phone;
    console.log(phone)
    let source = req.query.source;
    console.log(source);
    if(!name || !phone){
      res.json({code:0,data:'params empty!'})
      return
    }
    try{
      const clues = await Clue.insert({name,phone,source});
      res.json({code:200,data:clues})
    }catch(err){
      res.json({code:e})
    }
  },
  renderClue:async function(req,res,next){
    try{
      const clues = await Clue.all();
      res.locals.clues= clues.map((data)=>{
        data.create_time_display = formatTime(data.create_time);
        return data
      });
      res.render('admin/clue.tpl',res.locals);
    }catch(e){
      res.locals.error=e;
      res.render('error',res.locals);
    }
  },
  renderClurRecord:async function(req,res,next){
    try{
      const id = req.params.id;
      const clues = await Clue.select({id});
      const record = await Record.select({clue_id:id})
      const users = await User.all();
      res.locals.clue=clues[0];
      res.locals.clue.create_time_display=formatTime(res.locals.clue.create_time);
      res.locals.users=users;
      res.locals.record=record.map((data)=>{
        data.create_time_display=formatTime(data.create_time);
        return data
      });
      res.render('admin/clue_record.tpl',res.locals)
    }catch(e){
      res.locals.error=e;
      res.render('error',res.locals)
    }
  },
  update:async function(req,res,next){
    let id = req.params.id;
    let status = req.body.status;
    let comment = req.body.comment;
    let user_id =  req.body.user_id;
    if(!status || !comment){
      res.json({code:0,data:'params empty!'})
      return
    }
    try{
      const clue = await Clue.update(id,{status,comment,user_id});
      res.json({code:200,data:clue})
    }catch(e){
      console.log(e);
      res.json({code:e})
    }
  },
  addRecord:async function(req,res,next){
    let clue_id = req.params.id;
    let content = req.body.content;
    let create_time = new Date();
    if(!content){
      res.json({code:0,data:'params empty!'})
      return
    }
    try{
      const record = await Record.insert({content, create_time,clue_id});
      console.log(record);
      res.json({code:200,data:record});
    }catch(e){
      console.log(e)
      res.json({code:e})
    }
  }
}
module.exports = clueController;