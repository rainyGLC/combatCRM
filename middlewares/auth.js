const authMiddleware={
  mustLogin:function(req,res,next){
    if(!res.locals.isLogin){
      res.redirect('/admin/login')
      return
    }
    next();
  }
}
module.exports=authMiddleware;