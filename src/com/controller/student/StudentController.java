package com.controller.student;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.academicsetting.AcademicYearDao;

import com.dao.course.CourseMasterDao;
import com.dao.student.StudentEnrolPersonalDetailDao;
import com.dao.student.StudentRegistrationDao;
import com.dao.universal.UniversalDao;
import com.entity.academicsetting.AcademicYearEntity;

import com.entity.course.CourseEntity;
import com.entity.student.StudentEnrolDocDetailEntity;
import com.entity.student.StudentEnrolParentDetailEntity;
import com.entity.student.StudentEnrolPersonalDetailEntity;
import com.entity.student.StudentRegistrationEntity;
import com.entity.universal.CountryEntity;

/**
 * @author Devil
 *
 */
@SuppressWarnings("deprecation")
@WebServlet(description = "StudentController", urlPatterns = { "/StudentController" })
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from url field

		String action = request.getParameter("action");

		switch (action) {
		case "listStudentRegistrationRecord":
			listStudentRegistrationRecord(request, response);
			break;
		case "listStudentRegistrationRecordOnAdmission1":
			listStudentRegistrationRecordOnAdmission1(request, response);
			break;
		case "redirectStudentRegistrationRecordOnAdmissionPage":
			System.out.println("comming from admission first page");
			listStudentRegistrationRecordOnAdimissionForm(request, response);

			break;
		case "listStudentEnrollRecord":
			System.out.println("listing enrolled student record");
			listStudentEnrolledRecord(request, response);

			break;
			
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetching value from form hidden field

		// fetching value from hidden field
		String action;
		if (ServletFileUpload.isMultipartContent(request)) {
			action = "addStudentEnrolRecord";
		} else {
			action = request.getParameter("action");
		}

		switch (action) {
		case "addStudentRegistrationRecord":
			addStudentRegistrationRecord(request, response);
			break;
		case "addStudentEnrolRecord":
			addStudentEnrolRecord(request, response);
			break;
		default:
			// request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	private void addStudentRegistrationRecord(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		try {
			int regSession = Integer.parseInt(request.getParameter("academicYear"));
			String studName = request.getParameter("studName");
			String fatherName = request.getParameter("fatherName");
			String motherName = request.getParameter("motherName");
			String contact = request.getParameter("contact");
			int courseApplied = Integer.parseInt(request.getParameter("course"));
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String dOfReg = request.getParameter("dOfReg");

			String studRegId = "STUDREG" + (studName.replaceAll("\\s", "")).toUpperCase() + dob + "00"
					+ new StudentRegistrationDao().getStudentRegRowCounts() + 1;

			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");

			Date dob2 = sdf.parse(dob);
			Date regDate = sdf.parse(dOfReg);

			StudentRegistrationEntity studentRegistrationEntity = new StudentRegistrationEntity(studRegId, regSession,
					studName, fatherName, motherName, contact, courseApplied, gender, dob2, regDate);
			System.out.println("calling dao");
			StudentRegistrationDao dao = new StudentRegistrationDao();
			dao.addStudentRegDetails(studentRegistrationEntity);
			response.sendRedirect(request.getContextPath() + "/StudentController?action=listStudentRegistrationRecord");
		} catch (ParseException e) {

			e.printStackTrace();
		}

	}// addStudentRegistrationRecord ends

	@SuppressWarnings({ "unchecked" })
	private void addStudentEnrolRecord(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
		String UPLOAD_DIRECTORY_PHOTO = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/PHOTO";
		String UPLOAD_DIRECTORY_MARK_SHEET = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/MARKSHEET";
		String UPLOAD_DIRECTORY_BIRTH_CERTIFICATE = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/BIRTH_CERTIFICATE";
		String UPLOAD_DIRECTORY_TRANSFER_CERTIFICATE = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/TRANSFER_CERTIFICATE";
		String UPLOAD_DIRECTORY_CAST_CERTIFICATE = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/CAST_CERTIFICATE";
		String UPLOAD_DIRECTORY_MIGRATION_CERTIFICATE = "F:/Study/MySelf/Eclipses/ITS_Projects/School Project/WebContent/upload/Student/MIGRATION_CERTIFICATE";
		System.out.println("inside student admission");

		int regId = 0,academicYear=0,course=0;
		Date enrolDate = new Date();

		String fName = "";
		String mName = "";
		String lName = "";

		Date dob = new Date();
		String gender = "";
		int age = 0;
		String bloodGroup = "";
		String birthPlace = "";
		String nationality = "";
		String motherTongue = "";
		String religion = "";
		String category = "";
		String aadharNo = "";
		String currentAddress = "";
		String permanentAddress = "";
		int country = 0;
		int state = 0;
		int city = 0;
		String pinCode = "";
		String contact = "";
		String alternateContact = "";
		String emailId = "";
		String studPhoto = "";
		String fatherName = "";
		String fqualification = "";
		String fJob = "";
		String fContact = "";
		String fAdhar = "";
		String motherName = "";
		String mqualification = "";
		String mJob = "";
		String mContact = "";
		String mAdhar = "";
		String mark_sheet = "";
		String birth_certi = "";
		String transfer_certi = "";
		String caste_certi = "";
		String migration_certi = "";

		if (ServletFileUpload.isMultipartContent(request)) {
			try {

				System.out.println("inside multipart ");
				DiskFileUpload upload = new DiskFileUpload();

				List<FileItem> multiparts = upload.parseRequest(request);

				// new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				for (FileItem item : multiparts) {
					String name = "";
					if (!item.isFormField()) {
						System.out.println("inside upload doc");
						name = new File(item.getName()).getName();
						if (!name.isEmpty()) {
							String extension = "";
							String fieldName = item.getFieldName();
							int i = name.lastIndexOf('.');
							if (i > 0) {
								extension = name.substring(i + 1);
							}
							name = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date()) + name;
							if (fieldName.equals("stud_Photo") && (extension.toUpperCase().equals("JGEP")
									|| extension.toUpperCase().equals("JPG"))) {
								item.write(new File(UPLOAD_DIRECTORY_PHOTO + File.separator + name));
								studPhoto = name;
								System.out.println("photo upload");

							}
							if (fieldName.equals("mark_sheet")
									&& (extension.toUpperCase().equals("JGEP") || extension.toUpperCase().equals("JPG"))
									|| (extension.toUpperCase().equals("PDF"))) {
								item.write(new File(UPLOAD_DIRECTORY_MARK_SHEET + File.separator + name));
								mark_sheet = name;
								System.out.println("marksheet upload");
							}
							if (fieldName.equals("birth_certi")
									&& (extension.toUpperCase().equals("JGEP") || extension.toUpperCase().equals("JPG")
											|| (extension.toUpperCase().equals("PDF")))) {
								item.write(new File(UPLOAD_DIRECTORY_BIRTH_CERTIFICATE + File.separator + name));
								birth_certi = name;
								System.out.println("birth certificate upload");
							}
							if (fieldName.equals("transfer_certi") && (extension.toUpperCase().equals("PDF"))) {
								item.write(new File(UPLOAD_DIRECTORY_TRANSFER_CERTIFICATE + File.separator + name));
								transfer_certi = name;
								System.out.println("transfer certificate upload");
							}
							if (fieldName.equals("caste_certi") && (extension.toUpperCase().equals("PDF"))) {
								item.write(new File(UPLOAD_DIRECTORY_CAST_CERTIFICATE + File.separator + name));
								caste_certi = name;
								System.out.println("cast certificate upload");
							}
							if (fieldName.equals("migration_certi") && (extension.toUpperCase().equals("PDF"))) {
								item.write(new File(UPLOAD_DIRECTORY_MIGRATION_CERTIFICATE + File.separator + name));
								migration_certi = name;
								System.out.println("migration certificate upload");
							}

						}
					} else if (item.isFormField()) {
						System.out.println("inside Field value");
						if (item.getFieldName().equals("regId")) {
							regId = Integer.parseInt(item.getString());
						}else if (item.getFieldName().equals("academicYear")) {
							academicYear = Integer.parseInt(item.getString());
						}else if (item.getFieldName().equals("course")) {
							course = Integer.parseInt(item.getString());
						}
						else if (item.getFieldName().equals("enrolDate")) {
							enrolDate = sdf.parse(item.getString());
						} else if (item.getFieldName().equals("fName")) {
							fName = item.getString();
						} else if (item.getFieldName().equals("mName")) {
							mName = item.getString();
						} else if (item.getFieldName().equals("lName")) {
							lName = item.getString();
						} else if (item.getFieldName().equals("dob")) {
							dob = sdf.parse(item.getString());
						} else if (item.getFieldName().equals("gender")) {
							gender = item.getString();
						} else if (item.getFieldName().equals("age")) {
							age = Integer.parseInt(item.getString());
						} else if (item.getFieldName().equals("bloodGroup")) {
							bloodGroup = item.getString();
						} else if (item.getFieldName().equals("birthPlace")) {
							birthPlace = item.getString();
						} else if (item.getFieldName().equals("nationality")) {
							nationality = item.getString();
						} else if (item.getFieldName().equals("motherTongue")) {
							motherTongue = item.getString();
						} else if (item.getFieldName().equals("religion")) {
							religion = item.getString();
						} else if (item.getFieldName().equals("category")) {
							category = item.getString();
						} else if (item.getFieldName().equals("aadharNo")) {
							aadharNo = item.getString();
						} else if (item.getFieldName().equals("currentAddress")) {
							currentAddress = item.getString();
						} else if (item.getFieldName().equals("permanentAddress")) {
							permanentAddress = item.getString();
						} else if (item.getFieldName().equals("country")) {
							country = Integer.parseInt(item.getString());
						} else if (item.getFieldName().equals("state")) {
							state = Integer.parseInt(item.getString());
						} else if (item.getFieldName().equals("city")) {
							city = Integer.parseInt(item.getString());
						} else if (item.getFieldName().equals("pinCode")) {
							pinCode = item.getString();
						} else if (item.getFieldName().equals("contact")) {
							contact = item.getString();
						} else if (item.getFieldName().equals("alternateContact")) {
							alternateContact = item.getString();
						} else if (item.getFieldName().equals("emailId")) {
							emailId = item.getString();
						} else if (item.getFieldName().equals("fatherName")) {
							fatherName = item.getString();
						} else if (item.getFieldName().equals("fqualification")) {
							fqualification = item.getString();
						} else if (item.getFieldName().equals("fJob")) {
							fJob = item.getString();
						} else if (item.getFieldName().equals("fContact")) {
							fContact = item.getString();
						} else if (item.getFieldName().equals("fAdhar")) {
							fAdhar = item.getString();
						} else if (item.getFieldName().equals("motherName")) {
							motherName = item.getString();
						} else if (item.getFieldName().equals("mqualification")) {
							mqualification = item.getString();
						} else if (item.getFieldName().equals("mContact")) {
							mContact = item.getString();
						} else if (item.getFieldName().equals("mAdhar")) {
							mAdhar = item.getString();
						} else if (item.getFieldName().equals("mJob")) {
							mJob = item.getString();
						}

					}

				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		String studEnrolNo = "STUDENROLL" + fName.toUpperCase() + "00" + new StudentEnrolPersonalDetailDao().getStudentEnrolRowCounts()
				+ 1;
		StudentEnrolDocDetailEntity studentEnrolDocDetailEntity = new StudentEnrolDocDetailEntity(mark_sheet,
				birth_certi, transfer_certi, caste_certi, migration_certi, studPhoto);
		StudentEnrolParentDetailEntity studentEnrolParentDetailEntity = new StudentEnrolParentDetailEntity(fatherName,
				fqualification, fJob, fContact, fAdhar, motherName, mqualification, mJob, mContact, mAdhar);
		StudentEnrolPersonalDetailEntity studentEnrolPersonalDetailEntity = new StudentEnrolPersonalDetailEntity(regId,academicYear,course,
				enrolDate, studEnrolNo, fName, mName, lName, gender, dob, age, bloodGroup, birthPlace, nationality,
				motherTongue, religion, category, emailId, aadharNo, currentAddress, permanentAddress, country, state,
				city, pinCode, contact, alternateContact, studentEnrolDocDetailEntity, studentEnrolParentDetailEntity);
		System.out.println("calling dao");

		StudentRegistrationDao dao2 = new StudentRegistrationDao();
		dao2.updateEnrolStatusBasedOnStudRegId(regId);
		StudentEnrolPersonalDetailDao dao = new StudentEnrolPersonalDetailDao();
		dao.addStudentEnrolDetails(studentEnrolPersonalDetailEntity);

		response.sendRedirect(
				request.getContextPath() + "/StudentController?action=listStudentRegistrationRecordOnAdmission1");

	}// addStudentEnrolRecord ends

	private void listStudentRegistrationRecord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<CourseEntity> courseEntities = new CourseMasterDao().getCourseFullDetails();
		List<AcademicYearEntity> list = new AcademicYearDao().getAcademicYearFullDetails();
		List<StudentRegistrationEntity> listStud = new StudentRegistrationDao()
				.getStudentRegistraionEntityFullDetails();
		request.setAttribute("studentRegrecord", listStud);
		request.setAttribute("academicrecord", list);
		request.setAttribute("courseRecord", courseEntities);
		request.getRequestDispatcher("Admin/Student/RegistrationPage.jsp").forward(request, response);

	}// listStudentRegistrationRecord ends

	private void listStudentRegistrationRecordOnAdmission1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<StudentRegistrationEntity> listStud = new StudentRegistrationDao()
				.getStudentRegistraionEntityFullDetails();
		request.setAttribute("studentRegrecord", listStud);

		request.getRequestDispatcher("Admin/Student/AdmissionPage.jsp").forward(request, response);

	}// listStudentRegistrationRecordOnAdmission1 ends

	private void listStudentRegistrationRecordOnAdimissionForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int studRegNo = Integer.parseInt(request.getParameter("studRegNo"));
		StudentRegistrationEntity listStud = new StudentRegistrationDao()
				.getStudentRegistraionEntityDetailsById(studRegNo);
		List<CountryEntity> countryEntities = new UniversalDao().getCountryEntityDetails();
		request.setAttribute("countryRecord", countryEntities);
		request.setAttribute("studentRegrecordById", listStud);
		System.out.println(listStud.getStudRegId());
		request.getRequestDispatcher("Admin/Student/Admission.jsp").forward(request, response);

	}// listStudentRegistrationRecordOnAdimissionForm ends

	private void listStudentEnrolledRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<StudentEnrolPersonalDetailEntity> list = new StudentEnrolPersonalDetailDao().getStudentEnrolledFullRecord();
		List<CourseEntity> courseEntities = new CourseMasterDao().getCourseFullDetails();
		List<AcademicYearEntity> lista = new AcademicYearDao().getAcademicYearFullDetails();
		request.setAttribute("studentEnrolledRecord", list);
		request.setAttribute("courseRecord", courseEntities);
		request.setAttribute("academicrecord", lista);
		request.getRequestDispatcher("Admin/Student/ManageStudent.jsp").forward(request, response);
		
	}//listStudentEnrolledRecord ends
	
}
