<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- /page content -->

			<!-- footer -->
			<footer class="footer"> © 2018 All rights reserved. School Management
			designed by <a
		href="https://indiatechsoft.com">IndiaTechSoft</a>
</footer>
			<!-- End footer -->
		</div>
	</div>
	
	
	
	
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="${pageContext.request.contextPath}/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${pageContext.request.contextPath}/vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="${pageContext.request.contextPath}/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="${pageContext.request.contextPath}/vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="${pageContext.request.contextPath}/vendors/moment/min/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script	src="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="${pageContext.request.contextPath}/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script	src="${pageContext.request.contextPath}/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/google-code-prettify/src/prettify.js"></script>
	<!-- jQuery Tags Input -->
	<script src="${pageContext.request.contextPath}/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script src="${pageContext.request.contextPath}/vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script src="${pageContext.request.contextPath}/vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script src="${pageContext.request.contextPath}/vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script src="${pageContext.request.contextPath}/vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script	src="${pageContext.request.contextPath}/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script src="${pageContext.request.contextPath}/vendors/starrr/dist/starrr.js"></script>
	<!-- Chart.js -->
    <script src="${pageContext.request.contextPath}/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="${pageContext.request.contextPath}/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="${pageContext.request.contextPath}/vendors/Flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/Flot/jquery.flot.time.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="${pageContext.request.contextPath}/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="${pageContext.request.contextPath}/vendors/DateJS/build/date.js"></script>
<!-- Datatables  -->
    <script src="${pageContext.request.contextPath}/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/jszip/dist/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendors/pdfmake/build/vfs_fonts.js"></script>
<!--     Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath}/build/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/select/js/bootstrap-select.js"></script>
    




 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>



<!-- Script for time on nav bar -->
   <script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $interval) {
		  $scope.theTime = new Date().toLocaleTimeString();
		  $interval(function () {
		      $scope.theTime = new Date().toLocaleTimeString();
		  }, 1000);
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





</body>
</html>