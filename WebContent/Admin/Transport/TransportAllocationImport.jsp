<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../admin-index.jsp" />
     	<!-- page content -->
        <div class="right_col" role="main">
          <div class="container">
          	<div class="page-title">
              <div class="title_left">
                <h3><img src="../images/bus.png" width="35" height="35"/>  Transport Allocation Import</h3>
              </div>

              <div class="title_right">
                <ol class="breadcrumb pull-right">
		        	<li><a href="#"><img src="../images/d1.png" width="25" height="25"/> Dashboard</a></li>
		        	<li><a href="#"> Transport</a></li>
		        	<li><a href="#"> Transport Allocation Import</a></li>
		      	</ol>
              </div>
            </div>
          	
          	
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Transport Allocation Import</h2>
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
                     	 <div class="col-md-4">	
	                      <label for="fullname" class="control-label">Browse Transport Allocation File <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <div class="file_upload">
	                      <input type="file" name="trans" accept="image/*" >
	                      </div>
	                      <br/>
  						  <button type="submit" class="btn btn-info pull-left" style="border-radius:0px;">Upload</button>
	                      </diV>
					</div>
                      	<div class="clearfix"></div>
                     </form> <br/>
                     <br/>
                     <div class="download">
                     <p><span style="padding:5px; margin:7px; border:1px solid #EB984E; border-radius:50%; background-color:#D35400;
                      color:#fff; font-size:10px;font-family:Bradley Hand ITC;"><b> i </b>
                     </span>Download the excel file format from below link and copy the below values in corresponding columns while filling excel sheet</p>
                     <p><a href="../Excel_file/Book1.xlsx" download><img src="../images/downloading.png" width="15" height="15"/>  Transport Allocation Excel Format</a></p>
                     </div>
                     <div class="clearfix"></div>
                     <br/><br/>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
          	</div>
           </div>
        </div>
        <!-- /page content -->
        
<jsp:include page="../Footer.jsp" />