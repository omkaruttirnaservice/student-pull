class ApiResponse {
	constructor(
		statusCode,
		success,
		usrMsg,
		data = null,
		errMsg = null,
		respDataType = "json",
	) {
		this.statusCode = statusCode;
		this.success = success;
		this.usrMsg = usrMsg;
		this.data = data ? JSON.stringify(data) : null;
		this.respDataType = respDataType;
		this.errMsg = errMsg;
	}
}

module.exports = ApiResponse;
