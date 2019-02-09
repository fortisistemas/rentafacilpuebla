<!DOCTYPE html>
<html lang="en">
<head>
	<title>Renta Facil Puebla - Próximamente</title>
	<meta charset="UTF-8">
	<meta name="keywords" content="puebla,renta,facil,casa,departamento,ava" />
	<meta name="description" content="renta de casas y departamentos facil en puebla sin aval" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/favicon.ico"/>
<!-- Bootstrap -->
<link rel="stylesheet" href="/bootstrap/bootstrap.min.css">    
<!-- Font awesome styles -->
<link rel="stylesheet" href="/apartment-font/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/util.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<header>
	<div class="top-bar-wrapper">
		<div class="container top-bar">
			<div class="row">
				<div class="col-xs-5 col-sm-8">
					<div class="top-mail pull-left hidden-xs">
						<span class="top-icon-circle">
							<i class="fa fa-envelope fa-sm"></i>
						</span>
						<span class="top-bar-text">gerencia@rentafacilpuebla.com</span>
					</div>
					<div class="top-phone pull-left hidden-xxs">
						<span class="top-icon-circle">
							<i class="fa fa-phone"></i>
						</span>
						<span class="top-bar-text">22-21-66-79-72</span>
					</div>
				</div>
				<div class="col-xs-7 col-sm-4">
					<div class="top-social-last top-dark pull-right">
					<#if principal??>
						<a class="top-icon-circle" href="/logout">
							<i class="fa fa-power-off"></i>
						</a>
					<#else>
						<a class="top-icon-circle" href="/admin">
							<i class="fa fa-lock"></i>
						</a>
					</#if>
					</div>
				</div>
			</div>
		</div><!-- /.top-bar -->	
	</div><!-- /.Page top-bar-wrapper -->
	</header>
	<div class="bg-img1 size1 flex-w flex-c-m p-t-55 p-b-55 p-l-15 p-r-15" style="background-image: url('/images/bg01.jpg');">
		<div class="wsize1 bor1 bg1 p-t-175 p-b-45 p-l-15 p-r-15 respon1">
			<div class="wrappic1">
				<img src="/images/logo_rfp.png" alt="LOGO">
			</div>

			<p class="txt-center m1-txt1 p-t-33 p-b-68">
				Esta página está en construcción
			</p>

			<div class="wsize2 flex-w flex-c hsize1 cd100">
				<div class="flex-col-c-m size2 how-countdown">
					<span class="l1-txt1 p-b-9 days">1</span>
					<span class="s1-txt1">Days</span>
				</div>

				<div class="flex-col-c-m size2 how-countdown">
					<span class="l1-txt1 p-b-9 hours">17</span>
					<span class="s1-txt1">Hours</span>
				</div>

				<div class="flex-col-c-m size2 how-countdown">
					<span class="l1-txt1 p-b-9 minutes">50</span>
					<span class="s1-txt1">Minutes</span>
				</div>

				<div class="flex-col-c-m size2 how-countdown">
					<span class="l1-txt1 p-b-9 seconds">39</span>
					<span class="s1-txt1">Seconds</span>
				</div>
			</div>
			<#if principal??>
			<form class="flex-w flex-c-m contact100-form validate-form p-t-55" action="/admin/properties/create" method="GET">
				<button class="flex-c-m s1-txt3 size3 how-btn trans-04 where1">
					Registrar Propiedad
				</button>
			</form>
			</#if>
		</div>
	</div>



	

<!--===============================================================================================-->	
	<script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/bootstrap/js/popper.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/countdowntime/moment.min.js"></script>
	<script src="/vendor/countdowntime/moment-timezone.min.js"></script>
	<script src="/vendor/countdowntime/moment-timezone-with-data.min.js"></script>
	<script src="/vendor/countdowntime/countdowntime.js"></script>
	<script>
		$('.cd100').countdown100({
			/*Set Endtime here*/
			/*Endtime must be > current time*/
			endtimeYear: 0,
			endtimeMonth: 0,
			endtimeDate: 1,
			endtimeHours: 17,
			endtimeMinutes: 0,
			endtimeSeconds: 0,
			timeZone: "" 
			// ex:  timeZone: "America/New_York"
			//go to " http://momentjs.com/timezone/ " to get timezone
		});
	</script>
<!--===============================================================================================-->
	<script src="/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="/js/main.js"></script>

</body>
</html>