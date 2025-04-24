const indexController = require("../application/controller/indexController.js");

const router = require("express").Router();

router.get("/", indexController.renderHomePage);
router.get("/download-students", indexController.pullStudents);

router.get("/download-centers", indexController.downloadCenters);

module.exports = router;
