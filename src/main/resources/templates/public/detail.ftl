<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<#import "../lib/sidebar-search.ftl" as sbSearch />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Detalle de propiedad (${propiedad.id})" />
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">

<@ph.nav />
    <section class="section-dark no-padding">
		<!-- Slider main container -->
		<div id="swiper-gallery" class="swiper-container">
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Slides -->
				<#list propiedad.imageUrls as propImage>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" 
					data-background="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${propImage}" 
					data-sub-html="<strong>${propiedad.type} ${propiedad.transaction}</strong><br/>${propiedad.cityStateZip}"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated fadeInUp gallery-slide-desc-1">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">${propiedad.type} ${propiedad.transaction}</h5>
											<h3>${propiedad.cityStateZip}<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										${propiedad.price?string.currency}
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>			
						</div>
					</div>
				</div>
				</#list>
			</div>
			
			<div class="slide-buttons slide-buttons-center">
				<a href="#" class="navigation-box navigation-box-next slide-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
				<div id="slide-more-cont"></div>
				<a href="#" class="navigation-box navigation-box-prev slide-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
			</div>
			
		</div>
		
    </section>
	<section class="thumbs-slider section-both-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-1">
					<a href="#" class="thumb-box thumb-prev pull-left"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-10">
					<!-- Slider main container -->
					<div id="swiper-thumbs" class="swiper-container">
						<!-- Additional required wrapper -->
						<div class="swiper-wrapper">
							<!-- Slides -->
							<#list propiedad.imageUrls as propImage>
							<div class="swiper-slide">
								<img class="slide-thumb" style="height:80px" src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${propImage}" alt="">
							</div>
							</#list>
						</div>
					</div>
				</div>
				<div class="col-xs-1">
					<a href="#" class="thumb-box thumb-next pull-right"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
				</div>
			</div>
		</div>
	</section>
	<section class="section-light no-bottom-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-9">
					<div class="row">
						<div class="col-xs-12 col-sm-7 col-md-8">
							<div class="details-image pull-left hidden-xs">
								<i class="fa fa-home"></i>
							</div>
							<div class="details-title pull-left">
								<h5 class="subtitle-margin">${propiedad.type} ${propiedad.transaction}</h5>
								<h3>${propiedad.cityStateZip}<span class="special-color">.</span></h3>
							</div>
							<div class="clearfix"></div>	
							<div class="title-separator-primary"></div>
							<p class="details-desc">${propiedad.description}</p>
						</div>
						<div class="col-xs-12 col-sm-5 col-md-4">
							<div class="details-parameters-price">${propiedad.price?string.currency}</div>
							<div class="details-parameters">
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Área</div>
									<div class="details-parameters-val"><#if propiedad.area??>${propiedad.area}<#else>0</#if>m<sup>2</sup></div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Recamaras</div>
									<div class="details-parameters-val">${propiedad.bedrooms}</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Baños</div>
									<div class="details-parameters-val">${propiedad.bathrooms}</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Estacionamiento</div>
									<div class="details-parameters-val">${propiedad.garageSize}</div>
									<div class="clearfix"></div>	
								</div>
							</div>
						</div>
					</div>
					<div class="row margin-top-45">
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<#if propiedad.terrace?? && propiedad.terrace == "on">
									<li><i class="jfont">&#xe815;</i>Terraza</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Terraza</li>
								</#if>
								<#if propiedad.internet?? && propiedad.internet == "on">
									<li><i class="jfont">&#xe815;</i>Internet</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Internet</li>
								</#if>
								<#if propiedad.cableTv?? && propiedad.cableTv == "on">
									<li><i class="jfont">&#xe815;</i>Cable TV</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Cable TV</li>
								</#if>
								<#if propiedad.balcony?? && propiedad.balcony == "on">
									<li><i class="jfont">&#xe815;</i>Balcón</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Balcón</li>
								</#if>
								<#if propiedad.cluster?? && propiedad.cluster == "on">
									<li><i class="jfont">&#xe815;</i>Cerrado</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Cerrado</li>
								</#if>
							</ul>
						</div>
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<#if propiedad.garage?? && propiedad.garage == "on">
									<li><i class="jfont">&#xe815;</i>Garage</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Garage</li>
								</#if>
								<#if propiedad.lift?? && propiedad.lift == "on">
									<li><i class="jfont">&#xe815;</i>Elevador</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Elevador</li>
								</#if>
								<#if propiedad.furniture?? && propiedad.furniture == "on">
									<li><i class="jfont">&#xe815;</i>Amueblado</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Amueblado</li>
								</#if>
								<#if propiedad.cityCentre?? && propiedad.cityCentre == "on">
									<li><i class="jfont">&#xe815;</i>Céntrico</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Céntrico</li>
								</#if>
								<#if propiedad.security?? && propiedad.security == "on">
									<li><i class="jfont">&#xe815;</i>Seguridad</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Seguridad</li>
								</#if>
							</ul>
						
						</div>
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<#if propiedad.eco?? && propiedad.eco == "on">
									<li><i class="jfont">&#xe815;</i>Ecotecnologías</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Ecotecnologías</li>
								</#if>
								<#if propiedad.swimmingPool?? && propiedad.swimmingPool == "on">
									<li><i class="jfont">&#xe815;</i>Alberca</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Alberca</li>
								</#if>
								<#if propiedad.kitchen?? && propiedad.kitchen == "on">
									<li><i class="jfont">&#xe815;</i>Cocina</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Cocina</li>
								</#if>
								<#if propiedad.roofTerrace?? && propiedad.roofTerrace == "on">
									<li><i class="jfont">&#xe815;</i>Azotea</li>
								<#else>
									<li><i class="jfont">&#xe817;</i>Azotea</li>
								</#if>
							</ul>
						</div>
					</div>
					<#if principal??>
					<div class="row margin-top-45">
						<div class="col-xs-12">
							<#if propiedad.highlight?? && propiedad.highlight == "on">
							<button id="unhighlight-btn" class="btn btn-warning">Quitar destacado</button>
							<#else>
							<button id="highlight-btn" class="btn btn-success">Destacar</button>
							</#if>
							<button id="delete-btn" class="btn btn-danger">Borrar</button>
						</div>
					</div>
					</#if>
					<div class="row margin-top-45">
						<div class="col-xs-12 apartment-tabs">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active">
									<a href="#tab-map" aria-controls="tab-map" role="tab" data-toggle="tab">
										<span>Map</span>
										<div class="button-triangle2"></div>
									</a>
								</li>
								<li role="presentation">
									<a href="#tab-street-view" aria-controls="tab-street-view" role="tab" data-toggle="tab">
										<span>Street view</span>
										<div class="button-triangle2"></div>
									</a>
								</li>
							</ul>
								<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="tab-map">
									<div id="estate-map" class="details-map"></div>
								</div>
								<div role="tabpanel" class="tab-pane" id="tab-street-view">
									<div id="estate-street-view" class="details-map"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row margin-top-60">
						<div class="col-xs-12">
							<h3 class="title-negative-margin">contactar Al Asesor<span class="special-color">.</span></h3>
							<div class="title-separator-primary"></div>
						</div>
					</div>
					<div class="row margin-top-60">
						<div class="col-xs-8 col-xs-offset-2 col-sm-3 col-sm-offset-0">
							<h5 class="subtitle-margin">Asesor</h5>
							<h3 class="title-negative-margin">Rosario Rodriguez<span class="special-color">.</span></h3>
							<a href="agent-right-sidebar.html" class="agent-photo">
								<img src="/images/rosario.jpg" alt="" class="img-responsive" />
							</a>
						</div>
						<div class="col-xs-12 col-sm-9">
							<div class="agent-social-bar">
								<div class="pull-left">
									<span class="agent-icon-circle">
										<i class="fa fa-phone"></i>
									</span>
									<span class="agent-bar-text">22-21-66-79-72</span>
								</div>
								<div class="pull-left">
									<span class="agent-icon-circle">
										<i class="fa fa-envelope fa-sm"></i>
									</span>
									<span class="agent-bar-text">gerencia@rentafacilpuebla.com</span>
								</div>
								<div class="clearfix"></div>
							</div>
							<form name="contact-from" action="#">
								<input name="name" type="text" class="input-short main-input" placeholder="Tu Nombre" />
								<input name="phone" type="text" class="input-short pull-right main-input" placeholder="Tu Movil" />
								<input name="mail" type="email" class="input-full main-input" placeholder="Tu Email" />
								<textarea name="message" class="input-full agent-textarea main-input" placeholder="Escriba Aqui Su Pregunta"></textarea>
								<div class="form-submit-cont">
									<a href="#" class="button-primary pull-right">
										<span>Enviar</span>
										<div class="button-triangle"></div>
										<div class="button-triangle2"></div>
										<div class="button-icon"><i class="fa fa-paper-plane"></i></div>
									</a>
									<div class="clearfix"></div>
								</div>
							</form>
						</div>
					</div>
					
					<div class="row margin-top-90">
						<div class="col-xs-12 col-sm-9">
							<h5 class="subtitle-margin"></h5>
									<h1>Novedades<span class="special-color">.</span></h1>
						</div>
						<div class="col-xs-12 col-sm-3">
							<a href="#" class="navigation-box navigation-box-next" id="short-offers-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
							<a href="#" class="navigation-box navigation-box-prev" id="short-offers-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
						</div>
						<div class="col-xs-12">
							<div class="title-separator-primary"></div>
						</div>
					</div>
					
					<div class="short-offers-container">
						<div class="owl-carousel" id="short-offers-owl">
							<#list highlightedProperties as hProperty>
							<div class="grid-offer-col">
								<div class="grid-offer">
									<div class="grid-offer-front">
										<div class="grid-offer-photo">
											<img src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${hProperty.imageUrls[0]}" alt="" />
											<div class="type-container">
												<div class="estate-type">${hProperty.type}</div>
												<div class="transaction-type">${hProperty.transaction}</div>
											</div>
										</div>
										<div class="grid-offer-text">
											<i class="fa fa-map-marker grid-offer-localization"></i>
											<div class="grid-offer-h4"><h4 class="grid-offer-title">${hProperty.street} ${hProperty.neighborghood}</h4></div>
											<div class="clearfix"></div>
											<p>${hProperty.description[0..*105]}[...]</p>
											<div class="clearfix"></div>
										</div>
										<div class="price-grid-cont">
											<div class="grid-price-label pull-left">Price:</div>
											<div class="grid-price pull-right">${hProperty.price?string.currency}</div>
											<div class="clearfix"></div>
										</div>
										<div class="grid-offer-params">
											<div class="grid-area">
												<img src="/images/area-icon.png" alt="" /><#if hProperty.area??>${hProperty.area}<#else>0</#if>m<sup>2</sup>
											</div>
											<div class="grid-rooms">
												<img src="/images/rooms-icon.png" alt="" />${hProperty.bedrooms}
											</div>
											<div class="grid-baths">
												<img src="/images/bathrooms-icon.png" alt="" />${hProperty.bathrooms}
											</div>
										</div>
									</div>
									<div class="grid-offer-back">
										<div id="grid-map${hProperty.id}" class="grid-offer-map"></div>
										<div class="button">
											<a href="/detail/${hProperty.id}" class="button-primary">
												<span>read more</span>
												<div class="button-triangle"></div>
												<div class="button-triangle2"></div>
												<div class="button-icon"><i class="fa fa-search"></i></div>
											</a>
										</div>
									</div>
								</div>
							</div>
							</#list>
						</div>
					</div>
					<div class="margin-top-45"></div>
				</div>
				<div class="col-xs-12 col-md-3">
					<div class="sidebar">
						<@sbSearch.nav />
					</div>
				</div>
			</div>
		</div>
	</section>

    <@footer.nav />
</div>	

<@endscripts.nav />

<!-- google maps initialization -->
	<script type="text/javascript">
	$(document).on("ready", function () {
		google.maps.event.addDomListener(window, 'load', init);
		function init() {
			<#assign rspHouseType=(propiedad.type == "Casa")>
			mapInit(${propiedad.lat},${propiedad.lng},"estate-map",'${rspHouseType?then("/images/pin-house.png", "/images/pin-apartment.png")}', true);
			streetViewInit(${propiedad.lat},${propiedad.lng},"estate-street-view");
			<#list highlightedProperties as hProperty>
			<#assign hPropertyHouseType=(hProperty.type == "Casa")>
			mapInit(${hProperty.lat},${hProperty.lng},'grid-map${hProperty.id}','${hPropertyHouseType?then("/images/pin-house.png", "/images/pin-apartment.png")}', false);
			</#list>
		}

		<#if principal??>
		<#if propiedad.highlight?? && propiedad.highlight == "on">
		$('#unhighlight-btn').on('click', function() {
			$.ajax({
				url: '/admin/estate/rest/unhighlight/${propiedad.id}',
				type: 'GET',
				xhrFields: { withCredentials:true },
				complete: function() {
					window.location.href="/";
				}
			});
		});
		<#else>
		$('#highlight-btn').on('click', function(){
			$.ajax({
				url: '/admin/estate/rest/highlight/${propiedad.id}',
				type: 'GET',
				xhrFields: { withCredentials:true },
				complete: function() {
					window.location.href="/";
				}
			});
		});
		</#if>
		$('#delete-btn').on('click', function(){
			var folio = prompt("Para borrar la imágen, por favor confirme el número de folio", "Folio");
			if (folio == ${propiedad.id}) {
				$.ajax({
					url: '/admin/estate/rest/delete/${propiedad.id}',
					type: 'GET',
					xhrFields: { withCredentials:true },
					complete: function() {
						window.location.href="/";
					}
				});
			}
		});
		</#if>
	});
	</script>
	
	</body>
</html>