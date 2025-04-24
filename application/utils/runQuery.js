exports.runQuery = (pool, q, data = []) => {
	return new Promise((resolve, reject) => {
		if (data.length >= 1) {
			pool.query(q, data, function (err, result) {
				err ? reject(err) : resolve(result);
			});
		} else {
			pool.query(q, function (err, result) {
				err ? reject(err) : resolve(result);
			});
		}
	});
};
exports.runQuery2 = (dbCon, q, data = []) => {
	return new Promise((resolve, reject) => {
		if (data.length >= 1) {
			dbCon.execute(q, data, function (err, result) {
				err ? reject(err) : resolve(result);
			});
		} else {
			dbCon.query(q, function (err, result) {
				err ? reject(err) : resolve(result);
			});
		}
	});
};
