var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var authController = require('./../controllers/auth.js');
var clueController = require('./../controllers/clue.js');


router.post('/user',userController.insert);
router.put('/user/:id',userController.update);
router.post('/login',authController.login);

router.post('/clue',clueController.insert);
router.put('/clue/:id',clueController.update);
router.post('/clue/:id/record',clueController.addRecord);

module.exports = router;
