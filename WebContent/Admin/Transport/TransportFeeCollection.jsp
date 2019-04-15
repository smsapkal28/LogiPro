<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../admin-index.jsp" />

     	<!-- page content -->
        <div class="right_col" role="main">
          <div class="container">
          	<div class="page-title">
              <div class="title_left">
                <h3><img src="../images/bus.png" width="35" height="35"/>  Transport Allocation</h3>
              </div>

              <div class="title_right">
                <ol class="breadcrumb pull-right">
		        	<li><a href="#"><img src="../images/d1.png" width="25" height="25"/> Dashboard</a></li>
		        	<li><a href="#"> Transport</a></li>
		        	<li><a href="#"> Transport Allocation</a></li>
		      	</ol>
              </div>
            </div>
          	
          	
            <div class="clearfix"></div>
			
          	<div class="row">		
			<div class="col-md-12 col-sm-12 col-xs-12">
                <div  class="x_panel">
                  <div class="x_title">
                    <h2>Manage</h2>
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
                     	 <div class="col-md-3">	
	                      <label for="" class="control-label">User Type <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                       <select id="u_type" class="form-control" name="" required>
                            <option value="">Select</option>
                            <!-- <option value="stu">Student</option> -->
                            <option value="emp">Employee</option>
                          </select>
	                      </diV>
	                    <!-- <div id="stu" class="trans" style="display:none;"> 
                     	 <div class="col-md-3">	
	                      <label for="" class="control-label">Course <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
                     	 <div class="col-md-3">	
	                      <label for="" class="control-label">Batch <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                       <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
                         </div> 
                         <div class="col-md-3">	
	                      <label for="" class="control-label">Student Name <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
	                    </div> --> 
	                    <div id="emp" class="trans" style="display:none;">  
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Department <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Employee Name <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
	                    </div>      
					</div>
					<div class="clearfix"></div>
                     <h5 style="text-align:center; color:#273746;"><b>OR</b></h5>
                     <div class="clearfix"></div>
					<div class="form-group row">
                     	 <div class="col-md-3">	
	                      <label for="" class="control-label">Search Employee <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                       <select id="first-disabled" class="selectpicker form-control" data-hide-disabled="true" data-live-search="true">
							    <optgroup disabled="disabled" label="disabled">
							      <option>Please Select</option>
							    </optgroup>
							      <option value="stu">Narayan</option>
						   </select>
	                      </diV>
	                      <div class="col-md-3">
  						  <button type="submit" class="btn btn-info pull-left" style="border-radius:0px;margin-top:30px;">Go</button>
	                     </diV>
					</div>
					
						
					<br/><div class="clearfix"></div>
					<!-- <button type="submit" class="btn btn-info pull-right" style="border-radius:0px;">Submit</button> -->
				   </form> 
                  </div>
                </div>
              </div>
             <br/><div class="clearfix"></div>
             
                      <div class="nk">
						  <button id="defaultOpen" class="tablinks" onclick="openCity(event, 'dest')">Transport Allocation</button>
						  <button class="tablinks" onclick="openCity(event, 'list')" style="margin-left:0px;">Manage</button>
					  </div>
                  
              <br/><div class="clearfix"></div>
              <div class="transport" id="dest">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Payment Window</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                     <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                      <thead>
                        <tr>
                          <th>Route-Destination</th>
                          <th>Fee Type</th>
                          <th>Actual Amount</th>
                          <th>Amount to be Paid</th>
                          <th>Fee</th>
                          <th>Discount</th>
                          <th style="width:150px;">Select</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row"></th>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                      </tbody>
                    </table>
					</div>
					<br />
                    <form>
					<div class="form-group row">
                     	 <div class="col-md-2">	
	                      <label for="" class="control-label">Payment Mode <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                       <select id="p_mode" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="cash">Cash</option>
                            <option value="chq">Cheque</option>
                            <option value="pay">Online Payment</option>
                          </select>
	                      </diV>
	                    <div id="cash" class="trans" style="display:none;"> 
                     	 <div class="col-md-3">	
	                      <label for="" class="control-label">Remarks <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <textarea class="form-control" rows="3" name="" id=""></textarea>
	                     </diV>
                     	 <div class="col-md-2">	
	                      <label for="" class="control-label" style="color:black;">Total Amount:</label>
	                      <label for="" class="control-label" style="color:black;margin-top:30px;">0</label> 
                         </div> 
                         <div class="col-md-3">	
	                       <label for="" class="control-label" style="margin-top:30px;">Do You Want to Receipt  <input type="checkbox" value=""></label>
	                      </diV>
	                     
	                    
	                     <div class="col-md-2">	
	                      <label for="" class="control-label">Receipet No <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <input type="text" class="form-control" name="" id=""/>
	                     </diV> 
	                    
	                    </div>
	                    <div id="chq" class="trans" style="display:none;">  
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Bank Name <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                      </diV>
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Cheque No <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <input type="text" class="form-control" name="" id=""/>
	                    </diV>
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Cheque Date <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <select id="" class="form-control" name="" required>
                            <option value="">Select</option>
                            <option value="">dsfsf</option>
                          </select>
	                    </diV>
	                    
	                    
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Remarks <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <textarea class="form-control" rows="3" name="" id=""></textarea>
	                    </diV>
	                     <div class="col-md-2">	
	                      <label for="" class="control-label" style="color:black;">Total Amount:</label>
	                      <label for="" class="control-label" style="color:black;margin-top:30px;">0</label>
                         </div> 
                         <div class="col-md-3">	
	                      <label for="" class="control-label" style="margin-top:30px;">Do You Want to Receipt <input type="checkbox" value=""></label>
	                     </diV>
	                      <div class="col-md-2">	
	                      <label for="" class="control-label">Receipet No <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <input type="text" class="form-control" name="" id=""/>
	                     </diV>
	                    </div>
	                    <div id="pay" class="trans" style="display:none;">  
	                    <div class="col-md-3">	
	                      <label for="" class="control-label">Remarks <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <textarea class="form-control" rows="3" name="" id=""></textarea>
	                    </diV>
	                    <div class="col-md-2">	
	                      <label for="" class="control-label" style="color:black;">Total Amount:</label>
	                      <label for="" class="control-label" style="color:black;margin-top:30px;">0</label>
	                     </diV>
	                     <div class="col-md-3">	
	                      <label for="" class="control-label" style="margin-top:30px;">Do You Want to Receipt <input type="checkbox" value=""></label>
	                     </diV>
	                    <div class="col-md-2">	
	                      <label for="" class="control-label">Receipet No <span class="required" style="color:red;font-size:17px;"><b>*</b></span></label>
	                      <input type="text" class="form-control" name="" id=""/>
	                     </diV> 
					   </div>
					</div> 
					<br/><div class="clearfix"></div>
					<button type="submit" class="btn btn-info pull-right" style="border-radius:0px;">Make Payment</button>
				   </form> 
                  </div>
                </div>
              </div>
              </div>
              <!-- Paid Details -->
              <div class="transport" id="list">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Paid List</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                      <thead>
                        <tr>
                          <th>Sr. No</th>
                          <th>Route Code</th>
                          <th>Destination</th>
                          <th>User Type</th>
                          <th>Name</th>
                          <th>Reg. No</th>
                          <th style="width:150px;"><center><button type="submit" class="btn btn-danger" style="border-radius:0px;">Generate Receipt</button></center></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row"></th>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td><center><button type="submit" class="btn btn-info" style="border-radius:0px;">Generate Receipt</button></center></td>
                        </tr>
                      </tbody>
                    </table>
					</div>
                  </div>
                </div>
              </div>
             </div> 
              <!-- Paid Details -->
              </div> 
           </div>
        </div>
        <!-- /page content -->
        
<jsp:include page="../Footer.jsp" />
<!-- tab start -->
<script>
function openCity(evt, cityName) {

    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("transport");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
document.getElementById("defaultOpen").click();
</script>
<script type="text/javascript">
   $(function() {
	   $('.trans').hide();
       $('#p_mode').change(function(){
           $('.trans').hide();
           $('#' + $(this).val()).show();
       });
   });
   $(function() {
	   $('.trans').hide();
       $('#u_type').change(function(){
           $('.trans').hide();
           $('#' + $(this).val()).show();
       });
   });
</script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>