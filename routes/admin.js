var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var authController = require('./../controllers/auth.js');
var authMiddleware = require('./../middlewares/auth.js');
var clueController = require('./../controllers/clue.js');
var logoutcontroller=require('./../controllers/outlogin');


router.get('/admin/login',authController.renderlogin);
router.get('/admin/user',authMiddleware.mustLogin,authMiddleware.mustRoot, userController.renderUser);
router.get('/admin/user_create',authMiddleware.mustLogin,authMiddleware.mustRoot, userController.renderUserCreate);
router.get('/admin/user/:id/edit',authMiddleware.mustLogin,authMiddleware.mustRoot, userController.renderEdit);



router.get('/',function(req,res,next){
  res.render('index')
})
router.get('/admin/clue',authMiddleware.mustLogin,clueController.renderClue);
router.get('/admin/clue/:id/clue_record',authMiddleware.mustLogin,clueController.renderClurRecord);

router.get('/admin/outlogin',logoutcontroller.outlogin)

module.exports = router;