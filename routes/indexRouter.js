const indexController = require("../application/controller/indexController.js");

const router = require("express").Router();

router.get("/pull-students", indexController.pullStudents);

module.exports = router;
