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
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/1.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
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
										${propiedad.price}
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>			
						</div>
					</div>
					
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/2.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-2">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>	
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/3.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-3">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/4.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-4">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/5.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-5">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/6.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-6">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/7.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-7">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/8.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-8">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/9.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-9">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/10.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-10">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/11.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-11">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/12.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-12">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/13.jpg"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-13">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-right">
											<h5 class="subtitle-margin">apartments for sale</h5>
											<h3>Fort Collins, Colorado 80523, USA<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-right hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
									<div class="gallery-slide-desc-price pull-right">
										$320 000
									</div>	
									<div class="clearfix"></div>
								</div>	
							</div>
						</div>
					</div>
				</div>
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
							<div class="swiper-slide">
								<img class="slide-thumb" src="/images/slides/m1.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m2.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m3.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m4.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m5.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m6.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m7.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m8.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m9.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m10.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m11.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m12.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m13.jpg" alt="">
							</div>
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
							<p class="details-desc">Descripción De La Propiedad Alvento Residencial es un desarrollo privado, ubicado en la mejor zona de Apodaca. Cuenta con viviendas de 2 y 3 niveles con amplios espacios bien distribuidos, tiene un área social con casa club climatizada, terraza, asadores, hermosas áreas verdes, andadores, juegos infantiles y cancha de pasto sintético. Alvento Residencial es el lugar ideal para que tu familia viva con comodidad y tranquilidad .</p>
						</div>
						<div class="col-xs-12 col-sm-5 col-md-4">
							<div class="details-parameters-price">${propiedad.price}</div>
							<div class="details-parameters">
								<div class="details-parameters-cont">
									<div class="details-parameters-name">area</div>
									<div class="details-parameters-val">54m<sup>2</sup></div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Recamaras</div>
									<div class="details-parameters-val">3</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Baños</div>
									<div class="details-parameters-val">1</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Estacinamiento</div>
									<div class="details-parameters-val">2</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Lorem</div>
									<div class="details-parameters-val">nostrud</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont">
									<div class="details-parameters-name">Ipsum</div>
									<div class="details-parameters-val">tempor</div>
									<div class="clearfix"></div>	
								</div>
								<div class="details-parameters-cont details-parameters-cont-last">
									<div class="details-parameters-name">Consectetur</div>
									<div class="details-parameters-val">eiusmod</div>
									<div class="clearfix"></div>	
								</div>
							</div>
						</div>
					</div>
					<div class="row margin-top-45">
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<li><i class="jfont">&#xe815;</i>ATerraza</li>
								<li><i class="jfont">&#xe815;</i>Internet</li>
								<li><i class="jfont">&#xe815;</i>Cable TV</li>
								<li><i class="jfont">&#xe815;</i>Balcon</li>
								<li><i class="jfont">&#xe815;</i>Cerrado</li>
							</ul>
						</div>
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<li><i class="jfont">&#xe815;</i>Garage</li>
								<li><i class="jfont">&#xe815;</i>Elevador</li>
								<li><i class="jfont">&#xe815;</i>Amueblado</li>
								<li><i class="jfont">&#xe815;</i>Centrico</li>
								<li><i class="jfont">&#xe815;</i>Seguridad</li>
							</ul>
						
						</div>
						<div class="col-xs-6 col-sm-4">
							<ul class="details-ticks">
								<li><i class="jfont">&#xe815;</i>Ecotecnologias</li>
								<li><i class="jfont">&#xe815;</i>Con Alberca</li>
								<li><i class="jfont">&#xe815;</i>Cocina</li>
								<li><i class="jfont">&#xe815;</i>Azotea</li>
							</ul>
						</div>
					</div>
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
								<img src="images/agent3.jpg" alt="" class="img-responsive" />
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
									<span class="agent-bar-text">rosario@rentafacilpuebla.com</span>
								</div>
								<div class="pull-right">
									<div class="pull-right">
										<a class="agent-icon-circle" href="#">
											<i class="fa fa-facebook"></i>
										</a>
									</div>
									<div class="pull-right">
										<a class="agent-icon-circle icon-margin" href="#">
											<i class="fa fa-twitter"></i>
										</a>
									</div>
									<div class="pull-right">
										<a class="agent-icon-circle icon-margin" href="#">
											<i class="fa fa-google-plus"></i>
										</a>
									</div>
									<div class="pull-right">
										<a class="agent-icon-circle icon-margin" href="#">
											<i class="fa fa-skype"></i>
										</a>
									</div>
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
								<div class="grid-offer-col">
									<div class="grid-offer">
										<div class="grid-offer-front">
										
											<div class="grid-offer-photo">
												<img src="images/grid-offer1.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="grid-offer-text">
												<i class="fa fa-map-marker grid-offer-localization"></i>
												<div class="grid-offer-h4"><h4 class="grid-offer-title">34 Fort Collins, Colorado 80523, USA</h4></div>
												<div class="clearfix"></div>
												<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
												<div class="clearfix"></div>
											</div>
											<div class="price-grid-cont">
												<div class="grid-price-label pull-left">Price:</div>
												<div class="grid-price pull-right">
													$ 320 000
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="grid-offer-params">
												<div class="grid-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="grid-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="grid-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
											
										</div>
										<div class="grid-offer-back">
											<div id="grid-map1" class="grid-offer-map"></div>
											<div class="button">	
												<a href="estate-details-right-sidebar.html" class="button-primary">
													<span>read more</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-search"></i></div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="grid-offer-col">
									<div class="grid-offer">
										<div class="grid-offer-front">
											<div class="grid-offer-photo">
												<img src="images/grid-offer2.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="grid-offer-text">
												<i class="fa fa-map-marker grid-offer-localization"></i>
												<div class="grid-offer-h4"><h4 class="grid-offer-title">West Fourth Street, New York 10003, USA</h4></div>
												<div class="clearfix"></div>
												<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
												<div class="clearfix"></div>
											</div>
											<div class="price-grid-cont">
												<div class="grid-price-label pull-left">Price:</div>
												<div class="grid-price pull-right">
													$ 299 000
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="grid-offer-params">
												<div class="grid-area">
													<img src="images/area-icon.png" alt="" />48m<sup>2</sup>
												</div>
												<div class="grid-rooms">
													<img src="images/rooms-icon.png" alt="" />2
												</div>
												<div class="grid-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="grid-offer-back">
											<div id="grid-map2" class="grid-offer-map"></div>
											<div class="button">	
												<a href="estate-details-right-sidebar.html" class="button-primary">
													<span>read more</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-search"></i></div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="grid-offer-col">
									<div class="grid-offer">
										<div class="grid-offer-front">
											<div class="grid-offer-photo">
												<img src="images/grid-offer3.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="grid-offer-text">
												<i class="fa fa-map-marker grid-offer-localization"></i>
												<div class="grid-offer-h4"><h4 class="grid-offer-title">E. Elwood St. Phoenix, AZ 85034, USA</h4></div>
												<div class="clearfix"></div>
												<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
												<div class="clearfix"></div>
											</div>
											<div class="price-grid-cont">
												<div class="grid-price-label pull-left">Price:</div>
												<div class="grid-price pull-right">
													$ 400 000
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="grid-offer-params">
												<div class="grid-area">
													<img src="images/area-icon.png" alt="" />93m<sup>2</sup>
												</div>
												<div class="grid-rooms">
													<img src="images/rooms-icon.png" alt="" />4
												</div>
												<div class="grid-baths">
													<img src="images/bathrooms-icon.png" alt="" />2
												</div>							
											</div>	
										</div>
										<div class="grid-offer-back">
											<div id="grid-map3" class="grid-offer-map"></div>
											<div class="button">	
												<a href="estate-details-right-sidebar.html" class="button-primary">
													<span>read more</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-search"></i></div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="grid-offer-col">
									<div class="grid-offer">
										<div class="grid-offer-front">
											<div class="grid-offer-photo">
												<img src="images/grid-offer4.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">house</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="grid-offer-text">
												<i class="fa fa-map-marker grid-offer-localization"></i>
												<div class="grid-offer-h4"><h4 class="grid-offer-title">N. Willamette Blvd., Portland, OR 97203, USA</h4></div>
												<div class="clearfix"></div>
												<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
												<div class="clearfix"></div>
											</div>
											<div class="price-grid-cont">
												<div class="grid-price-label pull-left">Price:</div>
												<div class="grid-price pull-right">
													$ 800 000
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="grid-offer-params">
												<div class="grid-area">
													<img src="images/area-icon.png" alt="" />300m<sup>2</sup>
												</div>
												<div class="grid-rooms">
													<img src="images/rooms-icon.png" alt="" />8
												</div>
												<div class="grid-baths">
													<img src="images/bathrooms-icon.png" alt="" />3
												</div>							
											</div>	
										</div>
										<div class="grid-offer-back">
											<div id="grid-map4" class="grid-offer-map"></div>
											<div class="button">	
												<a href="estate-details-right-sidebar.html" class="button-primary">
													<span>read more</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-search"></i></div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="grid-offer-col">
									<div class="grid-offer">
										<div class="grid-offer-front">
											<div class="grid-offer-photo">
												<img src="images/grid-offer5.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="grid-offer-text">
												<i class="fa fa-map-marker grid-offer-localization"></i>
												<div class="grid-offer-h4"><h4 class="grid-offer-title">One Brookings Drive St. Louis, Missouri 63130, USA</h4></div>
												<div class="clearfix"></div>
												<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
												<div class="clearfix"></div>
											</div>
											<div class="price-grid-cont">
												<div class="grid-price-label pull-left">Price:</div>
												<div class="grid-price pull-right">
													$ 320 000
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="grid-offer-params">
												<div class="grid-area">
													<img src="images/area-icon.png" alt="" />50m<sup>2</sup>
												</div>
												<div class="grid-rooms">
													<img src="images/rooms-icon.png" alt="" />2
												</div>
												<div class="grid-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="grid-offer-back">
											<div id="grid-map5" class="grid-offer-map"></div>
											<div class="button">	
												<a href="estate-details-right-sidebar.html" class="button-primary">
													<span>read more</span>
													<div class="button-triangle"></div>
													<div class="button-triangle2"></div>
													<div class="button-icon"><i class="fa fa-search"></i></div>
												</a>
											</div>
										</div>
									</div>
								</div>
							<div class="grid-offer-col">
								<div class="grid-offer">
									<div class="grid-offer-front">
										<div class="grid-offer-photo">
											<img src="images/grid-offer7.jpg" alt="" />
											<div class="type-container">
												<div class="estate-type">house</div>
												<div class="transaction-type">sale</div>
											</div>
										</div>
										<div class="grid-offer-text">
											<i class="fa fa-map-marker grid-offer-localization"></i>
											<div class="grid-offer-h4"><h4 class="grid-offer-title">One Neumann Drive Aston, Philadelphia 19014, USA</h4></div>
											<div class="clearfix"></div>
											<p>Lorem ipsum dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et [...]</p>
											<div class="clearfix"></div>
										</div>
										<div class="price-grid-cont">
											<div class="grid-price-label pull-left">Price:</div>
											<div class="grid-price pull-right">
												$ 500 000
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="grid-offer-params">
											<div class="grid-area">
												<img src="images/area-icon.png" alt="" />210m<sup>2</sup>
											</div>
											<div class="grid-rooms">
												<img src="images/rooms-icon.png" alt="" />6
											</div>
											<div class="grid-baths">
												<img src="images/bathrooms-icon.png" alt="" />2
											</div>							
										</div>	
									</div>
									<div class="grid-offer-back">
										<div id="grid-map6" class="grid-offer-map"></div>
										<div class="button">	
											<a href="estate-details-right-sidebar.html" class="button-primary">
												<span>read more</span>
												<div class="button-triangle"></div>
												<div class="button-triangle2"></div>
												<div class="button-icon"><i class="fa fa-search"></i></div>
											</a>
										</div>
									</div>
								</div>
							</div>
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
            google.maps.event.addDomListener(window, 'load', init);
			function init() {						
				mapInit(39.6282,-86.1320,"estate-map","images/pin-house.png", true);
				streetViewInit(39.6282,-86.1320,"estate-street-view");
				
				mapInit(41.2693,-70.0874,"grid-map1","images/pin-house.png", false);
				mapInit(33.7544,-84.3857,"grid-map2","images/pin-apartment.png", false);
				mapInit(33.7337,-84.4443,"grid-map3","images/pin-land.png", false);
				mapInit(33.8588,-84.4858,"grid-map4","images/pin-commercial.png", false);
				mapInit(34.0254,-84.3560,"grid-map5","images/pin-apartment.png", false);
				mapInit(40.6128,-73.9976,"grid-map6","images/pin-house.png", false);
			}
	</script>
	
	</body>
</html>