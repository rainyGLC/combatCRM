var express = require('express');
var router = express.Router();

router.get('/users',function(req,res,next){
  res.render('users/user.tpl')
})
router.get('/users/clue',function(req,res,next){
  res.render('users/clue.tpl')
})
router.get('/users/user_create',function(req,res,next){
  res.render('users/user_create.tpl')
})
router.get('/users/user_edit',function(req,res,next){
  res.render('users/user_edit.tpl')
})
router.get('/users/clue/clue_record',function(req,res,next){
  res.render('users/clue_record.tpl')
})
module.exports = router;