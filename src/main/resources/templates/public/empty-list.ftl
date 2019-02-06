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
					<h5 class="subtitle-margin second-color">BÚSQUEDA FALLIDA</h5>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
		
    </section>
	
	<section class="section-light section-top-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h1 class="error-subtitle text-color4">No encontramos propiedades</h1>
					
					<p class="margin-top-105 centered-text">Los filtros que utilizó para la búsqueda de propiedades no dieron resultados en nuestras listas.</p>
					<p class="centered-text">Intente <strong><a href="/">nuevamente</a></strong> con filtros diferentes</p>
				</div>
			</div>
		</div>
	</section>

    <@footer.nav />
</div>

<@endscripts.nav />
	
	</body>
</html>