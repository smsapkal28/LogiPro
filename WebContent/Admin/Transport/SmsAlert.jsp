<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../admin-index.jsp" />
     	<!-- page content -->
        <div class="right_col" role="main">
          <div class="container">
          	<div class="page-title">
              <div class="title_left">
                <h3><img src="../images/bus.png" width="35" height="35"/>  SMS Alert</h3>
              </div>

              <div class="title_right">
                <ol class="breadcrumb pull-right">
		        	<li><a href="#"><img src="../images/d1.png" width="25" height="25"/> Dashboard</a></li>
		        	<li><a href="#"> Transport</a></li>
		        	<li><a href="#"> SMS Alert</a></li>
		      	</ol>
              </div>
            </div>
          	
          	
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-8 col-sm-8 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>SMS Alert</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  	<br />
                    <form>
                     <div class="form-group row">
                     	 <div class="col-md-12">	
	                      <label for="fullname" class="control-label">SMS For <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
					</div>
					<br>
                   	<div class="clearfix"></div>
                   	 <div class="form-group row">
                     	 <div class="col-md-12">
		              <div class="stu_attendance">
		               <p><img src="../images/warning1.png" width="25" height="25"/>If you want to incorporate student information from the database in the messase,then you have to include certain codes in the place of user information.
		               <br/>The codes are: </p>
		              </div>
		             </div>
		            </div>  
              		<div class="clearfix"></div>
              		 <div class="form-group row">
                     	 <div class="col-md-12">	
	                      <label for="fullname" class="control-label">Message <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <textarea class="form-control" rows="3" placeholder="Write Message" id="" name=""></textarea>
	                      <br/><br/>
  						  <button type="submit" class="btn btn-info pull-right" style="border-radius:0px;">Send</button>
	                      </diV>
					</div>
                     </form> <br/>
                     <div class="clearfix"></div>
                     <br/>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
          	</div>
           </div>
        </div>
        <!-- /page content -->
        
<jsp:include page="../Footer.jsp" />