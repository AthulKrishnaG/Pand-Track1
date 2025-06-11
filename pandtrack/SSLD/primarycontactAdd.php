	<!--side Database start-->
	<?php
        include("dbconnection.php");
		include("session.php");
    ?>
	<!--side Database end-->
	<!--side Header start-->
	<?php
        include("header.php");
    ?>
	<!--side Header end-->
	<!--side menu start-->
	<?php
        include("menu.php");
    ?>
	<!--side menu end-->
  <div class="app-content content">
    <div class="content-wrapper">
      <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
          <h3 class="content-header-title">Primary Contact Info</h3>
          <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Primary Contact Info</a>
                </li>
                <li class="breadcrumb-item active"><a href="#">Primary Contact Info</a>
                </li>
              </ol>
            </div>
          </div>
        </div>
        
      </div>
      <div class="content-body">
        <!-- Basic form layout section start -->
        <section id="horizontal-form-layouts">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                
                <div class="card-content collpase show">
                  <div class="card-body">
                   
                    <form class="form form-horizontal" action="phpcodes-Insert.php" method="post">
                      <div class="form-body">
                        <h4 class="form-section"><i class="ft-user"></i>Primary Contact Info</h4>
                        <div class="form-group row">
                          <label class="col-md-3 label-control" for="projectinput1">Select Patient</label>
                          <div class="col-md-9">
                            <select id="c_p_patient" name="c_p_patient" class="select2 form-control" required>
												<option value=''>--Select Value--</option>
													<?php
														$queryemp = "select p_id, p_name from patient order by p_name asc";
														$resultemp = mysqli_query($dbconnection,$queryemp);	
														while($rowemp=mysqli_fetch_array($resultemp))
														{
															$p_id  = $rowemp['p_id'];
															$p_name = $rowemp['p_name'];
															echo "<option value='".$p_id."'>".$p_name."</option>";
														}
													?>
												</select>
                          </div>
                        </div>
						<div class="form-group row">
                          <label class="col-md-3 label-control" for="projectinput1">Primary Contact Title</label>
                          <div class="col-md-9">
                            <input type="text" id="c_p_person" class="form-control" placeholder="person name"
                            name="c_p_person">
                          </div>
                        </div>
						
                        <div class="form-group row">
                          <label class="col-md-3 label-control" for="projectinput3">District</label>
                          <div class="col-md-9">
                            <input type="district" id="c_p_district" class="form-control" placeholder="primary contact district" name="c_p_district">
                          </div>
                        </div>
						<div class="form-group row">
                          <label class="col-md-3 label-control" for="projectinput3">Town</label>
                          <div class="col-md-9">
                            <input type="place" id="c_p_town" class="form-control" placeholder="primary contact town" name="c_p_town">
                          </div>
                        </div>
						<div class="form-group row">
                          <label class="col-md-3 label-control" for="projectinput3">Place</label>
                          <div class="col-md-9">
                            <input type="place" id="c_p_place" class="form-control" placeholder="primary contact place " name="c_p_place">
                          </div>
                        </div>



                        
                        
                       
                      <div class="form-actions center">
                        <button type="button" class="btn btn-warning mr-1">
                          <i class="ft-x"></i> Cancel
                        </button>
                        <button type="submit" id="btnprimarycontactAdd" name="btnprimarycontactAdd" class="btn btn-info">
                          <i class="la la-check-square-o"></i> Save
                        </button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
			
          </div>
          
        </section>
        <!-- // Basic form layout section end -->
      </div>
    </div>
  </div>
  	<!--side menu start-->
	<?php
        include("footer.php");
    ?>
	<!--side menu end-->
