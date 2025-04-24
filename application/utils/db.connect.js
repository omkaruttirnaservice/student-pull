require("dotenv").config();
const mysql = require("mysql2");

async function getMysqlConnection() {
	try {
		const connection = await mysql.createConnection({
			host: process.env.DB_HOST,
			user: process.env.DB_USER,
			password: process.env.DB_PASSWORD,
			port: process.env.DB_PORT,
			database: process.env.DB_DATABASE,
		});
		return connection;
	} catch (error) {
		console.log(error, "==error==");
	}
}

module.exports = getMysqlConnection;
