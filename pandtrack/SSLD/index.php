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
	<!--side menu end-->
  <div class="app-content content">
    <div class="content-wrapper">
      <div class="content-header row">
      </div>
      <div class="content-body">
        <div id="crypto-stats-3" class="row">
          <div class="col-xl-4 col-12">
            <div class="card crypto-card-3 pull-up">
              <div class="card-content">
                <div class="card-body pb-0">
                  <div class="row">
                    <div class="col-2">
                      <h1><i class="cc BTC warning font-large-2" title="Patients"></i></h1>
                    </div>
                    <div class="col-5 pl-2">
                      <h4>Patients</h4>
                      <h6 class="text-muted">No of Patients</h6>
                    </div>
                    <div class="col-5 text-right">
                      <h4>1240</h4>
                      <h6 class="success darken-4">20%<i class="la la-arrow-up"></i></h6>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12">
                    <canvas id="btc-chartjs" class="height-75"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-12">
            <div class="card crypto-card-3 pull-up">
              <div class="card-content">
                <div class="card-body pb-0">
                  <div class="row">
                    <div class="col-2">
                      <h1><i class="cc ETH blue-grey lighten-1 font-large-2" title="ETH"></i></h1>
                    </div>
                    <div class="col-5 pl-2">
                      <h4>Hotspot Area</h4>
                      <h6 class="text-muted"> No of Hotspot Areas</h6>
                    </div>
                    <div class="col-5 text-right">
                      <h4>190</h4>
                      <h6 class="success darken-4">23% <i class="la la-arrow-up"></i></h6>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12">
                    <canvas id="eth-chartjs" class="height-75"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-12">
            <div class="card crypto-card-3 pull-up">
              <div class="card-content">
                <div class="card-body pb-0">
                  <div class="row">
                    <div class="col-2">
                      <h1><i class="cc XRP info font-large-2" title="XRP"></i></h1>
                    </div>
                    <div class="col-5 pl-2">
                      <h4>Contacts</h4>
                      <h6 class="text-muted">no of contact persons</h6>
                    </div>
                    <div class="col-5 text-right">
                      <h4>45</h4>
                      <h6 class="danger">12% <i class="la la-arrow-down"></i></h6>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12">
                    <canvas id="xrp-chartjs" class="height-75"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Candlestick Multi Level Control Chart -->
     
        
      </div>
    </div>
  </div>
	<!--side menu start-->
	<?php
        include("footer.php");
    ?>
	<!--side menu end-->