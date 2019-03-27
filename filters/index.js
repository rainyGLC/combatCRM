module.exports=function(app){
  app.use(require('./loginFilter.js'))
  app.use(require('./initFilter.js'))
}