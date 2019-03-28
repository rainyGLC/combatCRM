const logoutcontroller={
  outlogin:async function(req,res,next){
    res.clearCookie('ac','user_name');
    res.clearCookie('user_name');
    res.redirect('/admin/login');
  }
}
module.exports=logoutcontroller;