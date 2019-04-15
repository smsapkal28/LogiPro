/*package com.config;



import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.entity.course.CourseCategoryModel;
import com.entity.course.CourseEntity;
import com.entity.course.SubjectCategoryModel;
import com.entity.course.SubjectModel;
import com.entity.employee.EmployeeBankDetailsEntity;
import com.entity.employee.EmployeeDetailsModel;
import com.entity.employee.EmployeeDocEntity;
import com.entity.employee.EmployeeJobDetailsEntity;
import com.entity.universal.BankNameModel;
import com.entity.universal.CityModel;
import com.entity.universal.CountryModel;
import com.entity.universal.StateModel;
import com.model.academic.DepartementTypeModel;
import com.model.academic.DesignationModel;
import com.model.academic.RoleModel;
import com.model.academic.UserModel;


// Hibernate Class With Query
@SuppressWarnings("deprecation")
public class HibernateQuery {
	
	static org.hibernate.Session session1;
	static Transaction transaction ;
	
//Session Creation
	
	public static void createSession() {
		session1 = HibernateUtil.getSessionFactory().openSession();
		transaction= session1.beginTransaction();
	}
	
//Transaction Commit
public static void commitTransaction() {
		
		session1.getTransaction().commit();
	}
	
//Destroy Session
	public static void destroysession() {
		session1.close();
	}


	
	// -----------------------------------------------------------------Department Type Model Section---------------------------------------------
	
//Department Record Insertion
	
	public static void insertDepartment(String deptName)
	{
		createSession();
		DepartementTypeModel dm = new DepartementTypeModel();
		dm.setDeptType(deptName);
		session1.save(dm);
		commitTransaction();
		destroysession();
	}
	

	
	// Fetching Department Full Record 
	
	@SuppressWarnings("unchecked")
	public static List<DepartementTypeModel> getDepartmentDetails() {
		
		createSession();
		Criteria criteria = session1.createCriteria(DepartementTypeModel.class);
		
		List<DepartementTypeModel> deptList  = criteria.list();

		
		destroysession();
		return deptList;
		
		
	}
	
	// Fetching Department  Record Based On Id

	public static DepartementTypeModel getDepartmentDetailsById(int deptId) {
		
		
		createSession();
		DepartementTypeModel dm = new DepartementTypeModel();
		dm = (DepartementTypeModel)session1.get(DepartementTypeModel.class, deptId);
		destroysession();
		return dm;
		
	}
	
	// --------------------------------------------------------------Role  Model Section---------------------------------------------------------
	
	//Role Record Insertion
	
		public static void insertRole(String role)
		{
			createSession();
			RoleModel rm = new RoleModel();
			
			rm.setRole(role);
			session1.save(rm);
			commitTransaction();
			destroysession();
		}	
		
		// Fetching Role Full Record 
	@SuppressWarnings("unchecked")
	public static Iterator<RoleModel> getRoleDetails() {
		
		
		Query query = session1.createQuery("FROM RoleModel");
		Iterator<RoleModel> rm = query.iterate();
		
		return rm;
		
		
	}

	// Fetching Role Record Based On Id

	public static RoleModel getRoleDetailsById(int role) {

		createSession();
		RoleModel rm = new RoleModel();
		rm = (RoleModel) session1.get(RoleModel.class, role);
		destroysession();
		return rm;

	}
		
		// -----------------------------------------------------Designation  Model Section-------------------------------------------------------
		
		//Designation Record Insertion
		
			public static void insertDesignation(String desig)
			{
				createSession();
				DesignationModel dm = new DesignationModel();
				
				dm.setDesigation(desig);
				session1.save(dm);
				commitTransaction();
				destroysession();
			}	
			
			// Fetching Designation Full Record 
			
			@SuppressWarnings("unchecked")
			public static List<DesignationModel> getDesignationDetails() {
				
				createSession();
				Criteria criteria = session1.createCriteria(DesignationModel.class);
				
				List<DesignationModel> desigList  = criteria.list();

				
				destroysession();
				return desigList;
				
				
			}
			
			
	// ------------------------------------------------------------User  Model Section----------------------------------------------------------
	
	//User Record Insertion
	
		public static void insertUserRecord(String empId,String userId,String password,int role,int dept,int status)
		{
			createSession();
			UserModel um = new UserModel();
			
			um.setEmpId(empId);
			um.setUserId(userId);
			um.setPassword(password);
			um.setRole(role);
			um.setDepartment(dept);
			um.setStatus(status);
			session1.save(um);
			commitTransaction();
			destroysession();
		}	
		

		// Fetching User Full Record 
		@SuppressWarnings("unchecked")
		public static Iterator<UserModel> getUserDetails() {
			
			
			Query query = session1.createQuery("FROM UserModel");
			Iterator<UserModel> um = query.iterate();
			
			return um;
			
			
		}
		
		


//---------------------------------------------------------------Academic Section----------------------------------------------------------------

//Academic year record insertion
public static void insertAcademicYearRecord(String academicYearName,String startYear,String endYear,int startMonth,int endMonth,int status)
{
	createSession();
	AcademicYearModel ay = new AcademicYearModel();
	ay.setAcademicYearName(academicYearName);
	ay.setStartMonth(startMonth);
	ay.setStartYear(startYear);
	ay.setEndMonth(endMonth);
	ay.setEndYear(endYear);
	ay.setStatus(status);
			
	session1.save(ay);
	commitTransaction();
	destroysession();
}	


//Fetch AcademicYear Full Record
public static Iterator<AcademicYearModel> getAcademicYearDetails() {
	
	
	Query query = session1.createQuery("FROM AcademicYearModel");
	Iterator<AcademicYearModel> aym = query.iterate();
	
	return aym;
	
	
}

//----------------------------------------------------------------Employee Section--------------------------------------------------------------


//Employee record insertion
public static void insertEmployeeRecord(String fName,String mName,String lName,Date dob,
		String gender,String email,String contact,String aContact,String pAddress,String cAddress,
		String country,String state,String city,int pinCode,String empDept,
		String empDesg,Date joinDate,String empQual,String empTExp,String empPhoto,String empAdhar,
		String empResume,String empExpLetter,String empOther,String empPanCard,String empAdharNo,
		String empPanNo,String empBankName,String empAccNo,String empAccHName,String empIFSCCode,String empBranchName)
{
	createSession();
	
	EmployeeBankDetailsEntity empbdm = new EmployeeBankDetailsEntity();
	empbdm.setBankName(empBankName);
	empbdm.setBranchName(empBranchName);
	empbdm.setAccholderName(empAccHName);
	empbdm.setAccNo(empAccNo);
	empbdm.setIfscCode(empIFSCCode);
	
	EmployeeDocEntity empdm = new EmployeeDocEntity();
	empdm.setEmpPhoto(empPhoto);
	empdm.setEmpAdharNo(empAdharNo);
	empdm.setEmpAdhar(empAdhar);
	empdm.setEmpPanNo(empPanNo);
	empdm.setEmpPan(empPanCard);
	empdm.setEmpResume(empResume);
	empdm.setEmpExprience(empExpLetter);
	empdm.setEmpOther(empOther);
	
	
	EmployeeJobDetailsEntity empjdm = new EmployeeJobDetailsEntity();
	empjdm.setEmpDept(empDept);
	
	empjdm.setEmpDesg(empDesg);
	empjdm.setEmpjoinDate(joinDate);
	empjdm.setEmpqualification(empQual);
	empjdm.setEmpTExp(empTExp);
	
	
	EmployeeDetailsModel empm = new EmployeeDetailsModel();
	empm.setfName(fName);
	empm.setmName(mName);
	empm.setlName(lName);
	empm.setDob(dob);
	empm.setGender(gender);
	empm.setEmail(email);
	empm.setContact(contact);
	empm.setaContact(aContact);
	empm.setpAddress(pAddress);
	empm.setcAddress(cAddress);
	empm.setCountry(country);
	empm.setState(state);
	empm.setCity(city);
	empm.setPinCode(pinCode);
	
	empm.setEmpbdm(empbdm);
	empm.setEmpdm(empdm);
	empm.setEmpjdm(empjdm);
	
	session1.save(empbdm);
	session1.save(empdm);
	session1.save(empjdm);
	session1.save(empm);
	commitTransaction();
	destroysession();
}	




//Fetch Employee Based on Id
public static Iterator<UserModel> getEmployeeDetailsById() {
	
	
	Query query = session1.createQuery("FROM UserModel");
	Iterator<UserModel> um = query.iterate();
	
	return um;
	
	
}


//Fetching Employee Full Record 

@SuppressWarnings("unchecked")
public static List<EmployeeDetailsModel> getEmployeeDetails() {
	
	createSession();
	Criteria criteria = session1.createCriteria(EmployeeDetailsModel.class);
	
	List<EmployeeDetailsModel> employeeList  = criteria.list();

	
	destroysession();
	return employeeList;
	
	
}


//Fetch EmployeeJobDetail Based on Id
public static List<EmployeeJobDetailsEntity> getEmployeeJobDetailsById(int id) {
	
	
	createSession();
	Criteria criteria = session1.createCriteria(EmployeeJobDetailsEntity.class).add(Restrictions.eq("empJobId",id));
	
	List<EmployeeJobDetailsEntity> empJob  = criteria.list();

	
	destroysession();
	return empJob;
	
}





//-----------------------------------------------------------Course Section--------------------------------------------------------------
	
	// Course Category insertion

public static void insertCourseCategory(String catName,String catCode)
{
	createSession();
	CourseCategoryModel ccm = new CourseCategoryModel();
	
	ccm.setCatName(catName);
	ccm.setCatCode(catCode);
	
	session1.save(ccm);
	commitTransaction();
	destroysession();
}	



//Fetching Course Category Full Record 

@SuppressWarnings("unchecked")
public static List<CourseCategoryModel> getCourseCtegoryDetails() {
	
	createSession();
	Criteria criteria = session1.createCriteria(CourseCategoryModel.class);
	
	List<CourseCategoryModel> catList  = criteria.list();

	
	destroysession();
	return catList;
	
	
}


//Fetch Course Catgory Based on Id
public static List<CourseCategoryModel> getCourseCategoryDetailsById(int id) {
	
	
	createSession();
	Criteria criteria = session1.createCriteria(CourseCategoryModel.class).add(Restrictions.eq("id",id));
	
	List<CourseCategoryModel> ccm  = criteria.list();

	
	destroysession();
	return ccm;
	
}



// Course Insertion

public static void insertCourse(int catId,String cName,String cCode,String description,int semester)
{
createSession();
CourseEntity csm = new CourseEntity();

csm.setCatId(catId);
csm.setcCode(cCode);
csm.setcName(cName);
csm.setDescription(description);
csm.setSemester(semester);

session1.save(csm);
commitTransaction();
destroysession();
}	


//Fetching Course Model Full Record 

@SuppressWarnings("unchecked")
public static List<CourseEntity> getCourseDetails() {
	
	createSession();
	Criteria criteria = session1.createCriteria(CourseEntity.class);
	
	List<CourseEntity> courseList  = criteria.list();

	
	destroysession();
	return courseList;
	
	
}



//Fetch Course Catgory Based on Id
public static List<CourseEntity> getCourseDetailsById(int id) {
	
	
	createSession();
	Criteria criteria = session1.createCriteria(CourseEntity.class).add(Restrictions.eq("id",id));
	
	List<CourseEntity> cm  = criteria.list();

	
	destroysession();
	return cm;
	
}



//Subject Category Insertion

public static void insertSubjectCategory(String sName,String sCode,String description)
{
createSession();
SubjectCategoryModel scm = new SubjectCategoryModel();
scm.setSubName(sName);
scm.setSubCode(sCode);
scm.setDescription(description);


session1.save(scm);
commitTransaction();
destroysession();
}	



//Fetching Subject Category Model Full Record 

@SuppressWarnings("unchecked")
public static List<SubjectCategoryModel> getSubjectCategoryDetails() {
	
	createSession();
	Criteria criteria = session1.createCriteria(SubjectCategoryModel.class);
	
	List<SubjectCategoryModel> subCatList  = criteria.list();

	
	destroysession();
	return subCatList;
	
	
}

//Fetch Course Catgory Based on Id
public static List<SubjectCategoryModel> getSubjectCategoryById(int id) {
	
	
	createSession();
	Criteria criteria = session1.createCriteria(SubjectCategoryModel.class).add(Restrictions.eq("id",id));
	
	List<SubjectCategoryModel> scm  = criteria.list();

	
	destroysession();
	return scm;
	
}

//Subject  Insertion

public static void insertSubjectRecord(int course,int semester,int subtype,String subName,String subCode,String description)
{
createSession();
SubjectModel sm = new SubjectModel();

sm.setCourse(course);
sm.setSemester(semester);
sm.setSubjectType(subtype);
sm.setSubjectName(subName);
sm.setSubjectCode(subCode);
sm.setDescription(description);

session1.save(sm);
commitTransaction();
destroysession();
}	



//Fetching Subject  Model Full Record 

@SuppressWarnings("unchecked")
public static List<SubjectModel> getSubjectDetails() {
	
	createSession();
	Criteria criteria = session1.createCriteria(SubjectModel.class);
	
	List<SubjectModel> subList  = criteria.list();

	
	destroysession();
	return subList;
	
	
}


//----------------------------------------------------------Universal Model Section---------------------------------------------------
//Fetching Country Full Record 

			@SuppressWarnings("unchecked")
			public static List<CountryModel> getCountryDetails() {
				
				createSession();
				Criteria criteria = session1.createCriteria(CountryModel.class);
				
				List<CountryModel> countryList  = criteria.list();

				
				destroysession();
				return countryList;
				
				
			}
			
			
			
			//Fetching State Full Record 

			@SuppressWarnings("unchecked")
			public static List<StateModel> getStateDetails() {
				
				createSession();
				Criteria criteria = session1.createCriteria(StateModel.class);
				
				List<StateModel> stateList  = criteria.list();

				
				destroysession();
				return stateList;
				
				
			}

			
			//Fetching State  Record By Id

			@SuppressWarnings("unchecked")
			public static List<StateModel> getStateDetailsById(int id) {
				
				createSession();
				Criteria criteria = session1.createCriteria(StateModel.class).add(Restrictions.eq("country_id",id));
				
				List<StateModel> stateList  = criteria.list();

				
				destroysession();
				return stateList;
				
				
			}

			
			//Fetching City Full Record 

			@SuppressWarnings("unchecked")
			public static List<CityModel> getCityDetails() {
				
				createSession();
				Criteria criteria = session1.createCriteria(CityModel.class);
				
				List<CityModel> cityList  = criteria.list();

				
				destroysession();
				return cityList;
				
				
			}
				
			
			//Fetching City  Record By Id

			@SuppressWarnings("unchecked")
			public static List<CityModel> getCityDetailsById(int id) {
				
				createSession();
				Criteria criteria = session1.createCriteria(CityModel.class).add(Restrictions.eqOrIsNull("state_id", id));
				
				List<CityModel> cityList  = criteria.list();

				
				destroysession();
				return cityList;
				
				
			}

			
			//Fetching Bank Name

			@SuppressWarnings("unchecked")
			public static List<BankNameModel> getBankName() {
				
				createSession();
				Criteria criteria = session1.createCriteria(BankNameModel.class);
				
				List<BankNameModel> bankList  = criteria.list();

				
				destroysession();
				return bankList;
				
				
			}
			

	
			
}
*/