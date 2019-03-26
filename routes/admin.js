var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');

router.get('/',function(req,res,next){
  res.render('index')
})

router.get('/admin/login',function(req,res,next){
  res.render('admin/login')
})

router.get('/admin/user',userController.show);

// router.get('/admin/user_create',function(req,res,next){
//   res.render('admin/user_create.tpl')
// })
//使用csrf中间件，往页面设置token
router.get('/admin/user_create',userController.renderPage)

// router.get('/admin/user_edit',function(req,res,next){
//   res.render('admin/user_edit.tpl')
// })
router.get('/admin/user/:id/edit',userController.renderEdit)

router.get('/admin/clue',function(req,res,next){
  res.render('admin/clue.tpl')
})

router.get('/admin/clue/clue_record',function(req,res,next){
  res.render('admin/clue_record.tpl')
})

router.get('/admin/login',function(req,res,next){
  res.render('admin/user.tpl')
})

module.exports = router;