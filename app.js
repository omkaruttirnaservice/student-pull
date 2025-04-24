var express = require("express");
var path = require("path");
var cors = require("cors");
var cookieParser = require("cookie-parser");
var session = require("express-session");
/*const redis = require('redis');
const redisStore = require('connect-redis')(session);
const client  = redis.createClient();*/
var logger = require("morgan");

const dotenv = require("dotenv");
const errorHandler = require("./application/utils/ErrorHandlerMiddleware.js");
dotenv.config();

var app = express();
app.use(cors());
app.use(
	session({
		secret: "utirna_admin",
		resave: true,
		saveUninitialized: true,
	}),
);

app.set("views", path.join(__dirname, "application/views"));
app.set("view engine", "ejs");
app.use(function (req, res, next) {
	res.set(
		"Cache-Control",
		"no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0",
	);
	next();
});

// app.use(logger("dev"));
app.use(express.json({ limit: "1024mb" }));
app.use(express.urlencoded({ extended: true, limit: "1024mb" }));
// app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", require("./routes/indexRouter.js"));

app.use(errorHandler);

module.exports = app;
