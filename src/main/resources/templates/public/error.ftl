<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Error" />
	
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">

<@ph.nav />
	
  	
    <section class="short-image no-padding blog-short-title">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<h5 class="subtitle-margin second-color">ERROR 404</h5>
					<h1 class="second-color">Page not found</h1>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
		
    </section>
	
	<section class="section-light section-top-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h1 class="huge-header">404<span class="special-color">.</span></h1>
					<h1 class="error-subtitle text-color4">No se encontró la página</h1>
					
					<p class="margin-top-105 centered-text">La página que usted está buscando pudo haber sido eliminada, o está temporalmente fuera de servicio.</p>
					<p class="centered-text">Regrese a nuestra página de <strong><a href="/">INICIO</a></strong> o regrese a la <strong><a href="javascript:history.back()">PÁGINA ANGERIOR</a></strong></p>
				</div>
			</div>
		</div>
	</section>

    <@footer.nav />
</div>

<@endscripts.nav />
	
	</body>
</html>