var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/user',userController.insert);
router.put('/user/:id',userController.update);

module.exports = router;
