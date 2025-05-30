module.exports = {
	apps: [
		{
			name: "master.kopbankasso.co.in",
			script: "./bin/www",

			// Options reference: https://pm2.io/doc/en/runtime/reference/ecosystem-file/
			instances: 1,
			autorestart: true,
			watch: false,
			max_memory_restart: "2G",
			env: {
				NODE_ENV: "development",
			},
			env_production: {
				NODE_ENV: "production",
			},
		},
	],
};
