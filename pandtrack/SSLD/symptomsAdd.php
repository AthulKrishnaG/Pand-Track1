<?php
    include("dbconnection.php");
    include("session.php");
?>
<!--side menu start-->
<?php include("header.php"); ?>
<!--side menu end-->
<!--side menu start-->
<?php include("menu.php"); ?>
<!--side menu end-->

<div class="app-content content">
  <div class="content-wrapper">
    <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Symptoms Info</h3>
        <div class="row breadcrumbs-top">
          <div class="breadcrumb-wrapper col-12">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Symptoms Info</a></li>
              <li class="breadcrumb-item active"><a href="#">Symptoms Info</a></li>
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

              <div class="card-content collapse show">
                <div class="card-body">

                  <form class="form form-horizontal" action="phpcodes-Insert.php" method="post" onsubmit="return validateSymptomsForm()">
                    <div class="form-body">
                      <h4 class="form-section"><i class="ft-user"></i>Symptoms Info</h4>

                      <div class="form-group row">
                        <label class="col-md-3 label-control" for="d_s_name">Symptoms Name</label>
                        <div class="col-md-9">
                          <select id="d_s_name" name="d_s_name" class="form-control" required>
                            <option value="" disabled selected>-- Select Symptoms --</option>
                            <option value="Fever">Fever</option>
                            <option value="Cough">Cough</option>
                            <option value="Headache">Headache</option>
                            <option value="Fatigue">Fatigue</option>
                            <option value="Sore Throat">Sore Throat</option>
                            <option value="Shortness of Breath">Shortness of Breath</option>
                            <option value="Chest Pain">Chest Pain</option>
                            <option value="Loss of Taste">Loss of Taste</option>
                            <option value="Loss of Smell">Loss of Smell</option>
                            <option value="Nausea">Nausea</option>
                            <option value="Vomiting">Vomiting</option>
                            <option value="Diarrhea">Diarrhea</option>
                            <option value="Muscle Pain">Muscle Pain</option>
                            <option value="Chills">Chills</option>
                            <option value="Runny Nose">Runny Nose</option>
                            <option value="Congestion">Congestion</option>
                            <option value="Dizziness">Dizziness</option>
                            <option value="Sweating">Sweating</option>
                            <option value="Rash">Rash</option>
                            <option value="Abdominal Pain">Abdominal Pain</option>
                            <option value="Eye Irritation">Eye Irritation</option>
                            <option value="Confusion">Confusion</option>
                            <option value="Seizures">Seizures</option>
                            <option value="Weight Loss">Weight Loss</option>
                            <option value="Loss of Appetite">Loss of Appetite</option>
                            <option value="Joint Pain">Joint Pain</option>
                            <option value="Swelling">Swelling</option>
                            <option value="Night Sweats">Night Sweats</option>
                            <option value="Chest Tightness">Chest Tightness</option>
                            <option value="Cold Sweats">Cold Sweats</option>
                            <option value="Palpitations">Palpitations</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label class="col-md-3 label-control" for="d_s_date_of_onset">Date of Onset</label>
                        <div class="col-md-9">
                          <input type="date" id="d_s_date_of_onset" class="form-control" name="d_s_date_of_onset" required>
                        </div>
                      </div>

                    </div>

                    <div class="form-actions center">
                      <button type="button" class="btn btn-warning mr-1" onclick="window.history.back()">
                        <i class="ft-x"></i> Cancel
                      </button>
                      <button type="submit" id="btnsymptomsadd" name="btnsymptomsadd" class="btn btn-info">
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
<?php include("footer.php"); ?>
<!--side menu end-->

<script>
  function validateSymptomsForm() {
    const name = document.getElementById('d_s_name').value;
    const date = document.getElementById('d_s_date_of_onset').value;

    if (!name) {
      alert('Please select a Symptoms Name.');
      return false;
    }

    if (!date) {
      alert('Please select the Date of Onset.');
      return false;
    }

    return true;
  }
</script>
