@extends('admin.layout.app')

@section('content')
        <div class="content-wrapper">
          <div class="row mb-4">
            <div class="col-12 d-flex align-items-center justify-content-between">
              <h4 class="page-title">Dashboard</h4>
            </div>
          </div>
          <div class="row">
            <div class="col-12 card-statistics">
              <div class="row">
                <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card card-tile">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex justify-content-between pb-2">
                        <h5>Total Categories</h5>
                        <i class="icon-calendar"></i>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="text-muted">{{count($app)}}</p>
                      </div>
                      <div class="progress progress-md">
                        <div class="progress-bar bg-info w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card card-tile">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex justify-content-between pb-2">
                        <h5>Total Bookings</h5>
                        <i class="icon-trophy"></i>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="text-muted">{{count($category)}}</p>
                      </div>
                      <div class="progress progress-md">
                        <div class="progress-bar bg-success w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card card-tile">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex justify-content-between pb-2">
                        <h5>Total Partner</h5>
                        <i class="menu-icon fa fa-ticket"></i>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="text-muted">{{count($group)}}</p>
                      </div>
                      <div class="progress progress-md">
                        <div class="progress-bar bg-danger w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card card-tile">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex justify-content-between pb-2">
                        <h5>Total User</h5>
                        <i class="icon-user"></i>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p class="text-muted">{{count($user)}}</p>
                      </div>
                      <div class="progress progress-md">
                        <div class="progress-bar bg-warning w-100" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">User's Registration</h6>
                  <div class="w-75 mx-auto mt-4">
                  </div>
                  <canvas id="lineCharts" height="80"></canvas>
                </div>
              </div>
            </div>
          </div>
@endsection

@section('line-chart')
<script type="text/javascript">
$(function() {
  /* ChartJS
   * -------
   * Data and config for chartjs
   */
  'use strict';
  var data = {
    labels: ["{{$day77}}", "{{$day66}}", "{{$day55}}", "{{$day44}}", "{{$day33}}", "{{$day22}}", "{{$day11}}"],
    datasets: [{
      label: '# of Votes',
      data: [{{count($day7)}}, {{count($day6)}}, {{count($day5)}}, {{count($day4)}}, {{count($day3)}}, {{count($day2)}}, {{count($day1)}}],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
      ],
      borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
      ],
      borderWidth: 1
    }]
  };

  var options = {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true
        },
        gridLines: {
          display: false
        }
      }],
      xAxes: [{
        ticks: {
          beginAtZero: true
        },
        gridLines: {
          display: false
        }
      }]
    },
    legend: {
      display: false
    },
    elements: {
      point: {
        radius: 0
      }
    }
  };
  
  if ($("#lineCharts").length) {
    var lineChartCanvas = $("#lineCharts").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas, {
      type: 'line',
      data: data,
      options: options
    });
  }

});

</script>
@endsection