const { default: axios } = require("axios");
const { runQuery2 } = require("../utils/runQuery.js");
const getMysqlConnection = require("../utils/db.connect.js");

const indexController = {
	pullStudents: async (req, res, next) => {
		const FF_URL = "https://102.sznsbal.in/";
		let resp = await axios.post(`${FF_URL}/master/students-data/data`, {
			_reqData: {
				exam_date: null,
				batch_list: null,
			},
		});

		console.log(resp.data.data, "==resp==");
		let conn = await getMysqlConnection();
		try {
			conn.query(
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
                        sl_password,
                        sl_present_status)
                    VALUES ?`,

				[
					resp.data.data.map(item => [
						item.roll_no,
						item.sl_f_name,
						item.sl_m_name,
						item.sl_l_name,
						item.sl_image,
						item.sl_sign,
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
						item.sl_present_status,
					]),
				],
			);
		} catch (error) {
			console.log(error, "==error==");
		}
	},
};

module.exports = indexController;
