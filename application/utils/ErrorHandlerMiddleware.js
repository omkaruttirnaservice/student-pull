const ApiResponse = require("./ApiResponse.js");

const errorHandler = (err, req, res, next) => {
	console.error(err.stack);
	console.log(err.msg, "==err.msg global error handler=================");

	const statusCode = err.statusCode || 500;

	return res
		.status(statusCode)
		.json(
			new ApiResponse(
				statusCode,
				false,
				"Server error",
				null,
				err.message || "Server error",
			),
		);
};

module.exports = errorHandler;
