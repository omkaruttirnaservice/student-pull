const indexController = require("../application/controller/indexController.js");

const router = require("express").Router();

router.post("/pull-students", indexController.pullStudents);

module.exports = router;
