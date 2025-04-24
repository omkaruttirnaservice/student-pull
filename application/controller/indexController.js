const { default: axios } = require("axios");
const { runQuery2 } = require("../utils/runQuery.js");
const getMysqlConnection = require("../utils/db.connect.js");
const poolConn = require("../utils/db.connect-pool.js");

const indexController = {
	// pullStudents: async (req, res, next) => {
	// 	const FF_URL = "https://101.apmcmangrulpir.in";
	// 	let resp = await axios.post(`${FF_URL}/master/students-data/data`, {
	// 		_reqData: {
	// 			exam_date: null,
	// 			batch_list: null,
	// 		},
	// 	});

	// 	let conn = await getMysqlConnection();
	// 	try {
	// 		await conn.query(
	// 			`INSERT INTO tn_student_list (
	//                     id,
	//                     sl_f_name,
	//                     sl_m_name,
	//                     sl_l_name,
	//                     sl_image,
	//                     sl_sign,
	//                     sl_email,
	//                     sl_father_name,
	//                     sl_mother_name,
	//                     sl_address,
	//                     sl_mobile_number_parents,
	//                     sl_tenth_marks,
	//                     sl_contact_number,
	//                     sl_class,
	//                     sl_roll_number,
	//                     sl_subject,
	//                     sl_stream,
	//                     sl_addmit_type,
	//                     sl_time,
	//                     sl_date,
	//                     sl_time_stamp,
	//                     sl_added_by_login_id,
	//                     sl_is_live,
	//                     sl_date_of_birth,
	//                     sl_school_name,
	//                     sl_catagory,
	//                     sl_application_number,
	//                     sl_is_physical_handicap,
	//                     sl_is_physical_handicap_desc,
	//                     sl_post,
	//                     sl_center_code,
	//                     sl_batch_no,
	//                     sl_exam_date,
	//                     sl_password)
	//                 VALUES ?`,

	// 			[
	// 				resp.data.data.map(item => [
	// 					item.sl_roll_number,
	// 					item.sl_f_name,
	// 					item.sl_m_name,
	// 					item.sl_l_name,
	// 					item.sl_image,
	// 					item.sl_sign,
	// 					item.sl_email,
	// 					item.sl_father_name,
	// 					item.sl_mother_name,
	// 					item.sl_address,
	// 					item.sl_mobile_number_parents,
	// 					item.sl_tenth_marks,
	// 					item.sl_contact_number,
	// 					item.sl_class,
	// 					item.sl_roll_number,
	// 					item.sl_subject,
	// 					item.sl_stream,
	// 					item.sl_addmit_type,
	// 					item.sl_time,
	// 					item.sl_date,
	// 					item.sl_time_stamp,
	// 					item.sl_added_by_login_id,
	// 					item.sl_is_live,
	// 					item.sl_date_of_birth,
	// 					item.sl_post, // post name for sl_school_name column
	// 					item.sl_catagory,
	// 					item.sl_application_number,
	// 					item.sl_is_physical_handicap,
	// 					item.sl_is_physical_handicap_desc,
	// 					item.sl_post,
	// 					item.sl_center_code,
	// 					item.sl_batch_no,
	// 					item.sl_exam_date,
	// 					item.sl_password,
	// 				]),
	// 			],
	// 		);

	// 		res.send("done student added " + resp.data.data.length);
	// 	} catch (error) {
	// 		console.log(error, "==error==");
	// 	}
	// },
	renderHomePage: async (req, res, next) => {
		const centersList = await poolConn.query(
			`SELECT * FROM tn_center_list`,
		);

		const batchesList = await poolConn.query(`
			SELECT sl_batch_no FROM tn_student_list 
				GROUP BY sl_batch_no 
				ORDER BY sl_batch_no
			`);

		const batchCount =
			await poolConn.query(`SELECT count(id) AS total_batch_students, sl_batch_no 
								FROM utr_node_exam_mangrulpir.tn_student_list
								GROUP BY sl_batch_no
								ORDER BY sl_batch_no
								;`);

		console.log(centersList, "-");
		res.render("index.ejs", {
			centersList: centersList[0],
			batchesList: batchesList[0],
			batchCount: batchCount[0],
		});
	},

	pullStudents: async (req, res, next) => {
		const websiteUrl = req.query.website_url;
		let resp = await axios.post(`${websiteUrl}/api/student-data/data`, {
			_reqData: {
				exam_date: null,
				batch_list: null,
				post_ids: null,
				server_number: null,
			},
		});

		// console.log(resp.data.data);
		const candidateData = JSON.parse(resp.data.data);
		console.log(candidateData);

		try {
			// delete old candidate data
			await poolConn.query("TRUNCATE tn_student_list");

			// insert candidates to tn_student_list
			await poolConn.query(
				`INSERT INTO tn_student_list (
					id,
					sl_f_name,
					sl_m_name,
					sl_l_name,
					sl_image,
					sl_sign,
					sl_email,
					sl_father_name,
					sl_mother_name,
					sl_address,
					sl_mobile_number_parents,
					sl_tenth_marks,
					sl_contact_number,
					sl_class,
					sl_roll_number,
					sl_subject,
					sl_stream,
					sl_addmit_type,
					sl_time,
					sl_date,
					sl_time_stamp,
					sl_added_by_login_id,
					sl_is_live,
					sl_date_of_birth,
					sl_school_name,
					sl_catagory,
					sl_application_number,
					sl_is_physical_handicap,
					sl_is_physical_handicap_desc,
					sl_post,
					sl_center_code,
					sl_batch_no,
					sl_exam_date,
					sl_password)
				VALUES ?`,

				[
					candidateData.map(item => [
						item.sl_roll_number,
						item.sl_f_name,
						item.sl_m_name,
						item.sl_l_name,
						replaceColonsToUnderscore(item.sl_image),
						replaceColonsToUnderscore(item.sl_sign),
						item.sl_email,
						item.sl_father_name,
						item.sl_mother_name,
						item.sl_address,
						item.sl_mobile_number_parents,
						item.sl_tenth_marks,
						item.sl_contact_number,
						item.sl_class,
						item.sl_roll_number,
						item.sl_subject,
						item.sl_stream,
						item.sl_addmit_type,
						item.sl_time,
						item.sl_date,
						item.sl_time_stamp,
						item.sl_added_by_login_id,
						item.sl_is_live,
						item.sl_date_of_birth,
						item.sl_post, // post name for sl_school_name column
						item.sl_catagory,
						item.sl_application_number,
						item.sl_is_physical_handicap,
						item.sl_is_physical_handicap_desc,
						item.sl_post,
						item.sl_center_code,
						item.sl_batch_no,
						item.sl_exam_date,
						item.sl_password,
					]),
				],
			);
			return res.status(200).json({
				status: 200,
				message: "Successfully downloaded students",
			});
		} catch (error) {
			console.log(error, "==error==");

			return res.status(500).json({
				status: error?.status || 500,
				message: error?.message || "Error while downloading students",
			});
		}
	},

	downloadCenters: async (req, res, next) => {
		try {
			const websiteUrl = req.query.website_url;
			let resp = await axios.get(
				`${websiteUrl}/api/student-data/download-centers-list`,
			);
			console.log(resp.data, "-centers list");

			// remove old college list

			const q1 = `TRUNCATE tn_center_list`;
			await poolConn.query(q1);

			// add new list

			await poolConn.query(
				`INSERT INTO tn_center_list (cl_number, cl_name, cl_address, cl_user_name, cl_password, cl_server_number) VALUES ?`,
				[
					resp.data.data.map((_center, i) => [
						_center.c_collageCode,
						_center.c_collageName,
						_center.c_collageAddress,
						"utr",
						"utr",
						i + 1,
					]),
				],
			);

			return res.status(201).json({
				status: 201,
				message: "Successfully downloaded college list",
			});
		} catch (error) {
			console.log(error);
			return res.status(500).json({
				status: error?.status || 500,
				message: error?.message || "Error while downloading students",
			});
		}
	},
};

function replaceColonsToUnderscore(item) {
	/**
	 * eg. item = APMC ATPADI/users/APMC ATPADI_sign_600067_2025-02-17 21:58:31.jpeg
	 * */
	if (!item) return false;
	return item.split("/").pop().replaceAll(":", "_");
}

module.exports = indexController;
