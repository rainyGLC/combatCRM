var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var authController = require('./../controllers/auth.js');
var authMiddleware = require('./../middlewares/auth.js');

router.get('/',function(req,res,next){
  res.render('index')
})

router.get('/admin/login',authController.renderlogin);
router.get('/admin/user',authMiddleware.mustLogin, userController.renderUser);
router.get('/admin/user_create',authMiddleware.mustLogin, userController.renderUserCreate);
router.get('/admin/user/:id/edit',authMiddleware.mustLogin, userController.renderEdit);


router.get('/admin/clue',authMiddleware.mustLogin, function(req,res,next){
  res.render('admin/clue.tpl')
})

router.get('/admin/clue/clue_record',authMiddleware.mustLogin, function(req,res,next){
  res.render('admin/clue_record.tpl')
})

// router.get('/admin/login',function(req,res,next){
//   res.render('admin/user.tpl')
// })

module.exports = router;