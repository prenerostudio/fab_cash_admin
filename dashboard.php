<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
		<div class="content-body">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-6 col-xxl-5 col-lg-6">
						<div class="card ticket-bx">
							<div class="card-body">
								<div class="d-sm-flex d-block pb-sm-3 align-items-end">
									<div class="mr-auto pr-3 mb-2 mb-sm-0"> <span class="text-white fs-20 font-w200 d-block mb-sm-3 mb-2">Total Watch Time</span>
										<h2 class="fs-40 text-white mb-0">456,502<span class="fs-18 ml-2">Min</span></h2> </div>
									<div class="d-flex flex-wrap">
										<svg width="87" height="58" viewBox="0 0 87 58" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M18.4571 37.6458C11.9375 44.6715 4.81049 52.3964 2 55.7162H68.8125C77.6491 55.7162 84.8125 48.5528 84.8125 39.7162V2L61.531 31.9333C56.8486 37.9536 48.5677 39.832 41.746 36.4211L37.3481 34.2222C30.9901 31.0432 23.2924 32.4352 18.4571 37.6458Z" fill="url(#paint0_linear)" />
											<path d="M2 55.7162C4.81049 52.3964 11.9375 44.6715 18.4571 37.6458C23.2924 32.4352 30.9901 31.0432 37.3481 34.2222L41.746 36.4211C48.5677 39.832 56.8486 37.9536 61.531 31.9333L84.8125 2" stroke="white" stroke-width="4" stroke-linecap="round" />
											<defs>
												<linearGradient id="paint0_linear" x1="43.4062" y1="8.71453" x2="46.7635" y2="55.7162" gradientUnits="userSpaceOnUse">
													<stop stop-color="white" offset="0" />
													<stop offset="1" stop-color="white" stop-opacity="0" /> </linearGradient>
											</defs>
										</svg>
										<div class="ml-3">
											<p class="text-warning fs-20 mb-0">+4%</p> <span class="fs-12">than last day</span> </div>
									</div>
								</div>
								<div class="progress mt-3 mb-4" style="height:15px;">
									<div class="progress-bar-striped progress-bar-animated" style="width: 86%; height:15px;" role="progressbar"> <span class="sr-only">86% Complete</span> </div>
								</div>
								<p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad mini</p> <a href="#" class="text-white">View detail<i class="las la-long-arrow-alt-right scale5 ml-3"></i></a> </div>
						</div>
					</div>
					<div class="col-xl-6 col-xxl-7 col-lg-6">
						<div class="row">
							<div class="col-sm-6">
								<div class="card overflow-hidden">
									<div class="card-header align-items-start pb-0 border-0">
										<div>
											<h4 class="fs-16 mb-0">451,509</h4> <span class="fs-12">Sales</span> </div>
										<div class="dropdown"> <a href="javascript:;" class="dropdown-toggle fs-12" data-toggle="dropdown" aria-expanded="false">
This Week
</a>
											<div class="dropdown-menu"> <a class="dropdown-item" href="javascript:void(0);">Daily</a> <a class="dropdown-item" href="javascript:void(0);">Weekly</a> <a class="dropdown-item" href="javascript:void(0);">Monthly</a> </div>
										</div>
									</div>
									<div class="card-body p-0">
										<canvas id="widgetChart1" height="60" class="mr-3"></canvas>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="card overflow-hidden">
									<div class="card-header align-items-start pb-0 border-0">
										<div>
											<h4 class="fs-16 mb-0">Increase 25%</h4> <span class="fs-12">Comparisson</span> </div>
										<div class="dropdown"> <a href="javascript:;" class="dropdown-toggle fs-12" data-toggle="dropdown" aria-expanded="false">
Daily
</a>
											<div class="dropdown-menu"> <a class="dropdown-item" href="javascript:void(0);">Daily</a> <a class="dropdown-item" href="javascript:void(0);">Weekly</a> <a class="dropdown-item" href="javascript:void(0);">Monthly</a> </div>
										</div>
									</div>
									<div class="card-body p-0">
										<canvas id="widgetChart2" height="60"></canvas>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="card overflow-hidden">
									<div class="card-header align-items-start pb-0 border-0">
										<div class="dropdown ml-auto"> <a href="javascript:;" class="dropdown-toggle fs-12" data-toggle="dropdown" aria-expanded="false">
This Week
</a>
											<div class="dropdown-menu"> <a class="dropdown-item" href="javascript:void(0);">Daily</a> <a class="dropdown-item" href="javascript:void(0);">Weekly</a> <a class="dropdown-item" href="javascript:void(0);">Monthly</a> </div>
										</div>
									</div>
									<div class="card-body pt-2">
										<div class="index-chart-point">
											<div class="check-point-area">
												<canvas id="doughnut_chart"></canvas>
											</div>
											<ul class="index-chart-point-list">
												<li><i class="fa fa-stop text-danger"></i>Tickets A</li>
												<li><i class="fa fa-stop text-success"></i> Tickets B</li>
												<li><i class="fa fa-stop text-warning"></i> Tickets C</li>
												<li><i class="fa fa-stop text-info"></i> Tickets D</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="card overflow-hidden">
									<div class="card-header align-items-start pb-0 border-0">
										<div>
											<h4 class="fs-16 mb-0">$456,623</h4> <span class="fs-12">Income</span> </div>
										<div class="dropdown"> <a href="javascript:;" class="dropdown-toggle fs-12" data-toggle="dropdown" aria-expanded="false">
Monthly
</a>
											<div class="dropdown-menu"> <a class="dropdown-item" href="javascript:void(0);">Daily</a> <a class="dropdown-item" href="javascript:void(0);">Weekly</a> <a class="dropdown-item" href="javascript:void(0);">Monthly</a> </div>
										</div>
									</div>
									<div class="card-body p-0">
										<canvas id="lineChart_4" height="60"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</div>
		<?php
include_once('./includes/footer.php');
?>