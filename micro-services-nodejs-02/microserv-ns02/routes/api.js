var express = require('express');
var router = express.Router();

/* GET api listing. */
router.get('/sayhello', function(req, res, next) {
  res.send('Hello from MicroServer 02');
});

router.get('/saybye', function(req, res, next) {
  res.send('Bye from MicroServeri 02');
});

module.exports = router;
