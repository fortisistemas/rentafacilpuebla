<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Contacto" />
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">

<@ph.nav />
	
  		
    <section class="short-image no-padding contact-short-title">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<!--<h5 class="subtitle-margin second-color">Estar En Contacto</h5>-->
					<!--<h1 class="second-color">Contactame</h1>-->
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
		
    </section>
	
	<section class="section-light section-both-shadow top-padding-45">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-6 margin-top-45">
					<p class="negative-margin">Los asesoramos en cualquier duda quetenga nuestro eficas equipo de asesores esta listo para ayudarte llena este formulario y re suelve todas tus dudas. tambien puedes dejar comentarios o sugerencias ya que apreciamos la opinion de nustros clientes   .</p>
					<img src="images/contact-image.jpg" alt="" class="pull-left margin-top-45" />
					<address class="contact-info pull-left">
						<!--<span><i class="fa fa-map-marker"></i>00456 Some Address line</span>-->
						<span><i class="fa fa-envelope"></i><a href="#"><rosario@rentafacilpuebla.com class="com">rosario@rentafacilpuebla.com</a></span>
						<span><i class="fa fa-phone"></i>22-21-66-79-72</span>
						<span><i class="fa fa-globe"></i><a href="#">http:/rentafacailpuebla.com</a></span>
						<span><i class="fa fa-clock-o"></i>lun-vie: 8:00 - 18:00</span>
						<span class="span-last">sab: 10:00 - 16:00</span>
					</address>
				</div>
				<div class="col-xs-12 col-md-6 margin-top-45">
					<form name="contact-from" id="contact-form" action="#" method="get">
								<div id="form-result"></div>
								<input name="name" id="name" type="text" class="input-short main-input required,all" placeholder="tu nombre" />
								<input name="phone" id="phone" type="text" class="input-short pull-right main-input required,all" placeholder="numero movil" />
								<input name="mail" id="mail" type="email" class="input-full main-input required,email" placeholder="tu correo" />
								<textarea name="message" id="message" class="input-full contact-textarea main-input required,email" placeholder="Escriba Aqui Su Pregunta"></textarea>
								<div class="form-submit-cont">
									<a href="#" class="button-primary pull-right" id="form-submit">
										<span>enviar</span>
										<div class="button-triangle"></div>
										<div class="button-triangle2"></div>
										<div class="button-icon"><i class="fa fa-paper-plane"></i></div>
									</a>
									<div class="clearfix"></div>
								</div>
							</form>
				</div>
				
				
			</div>
		</div>
	</section>
	
    <@footer.nav />
</div>	

<@endscripts.nav />
		
	</body>
</html>