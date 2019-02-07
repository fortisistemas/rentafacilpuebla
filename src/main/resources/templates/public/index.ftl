<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<#import "../lib/title-search.ftl" as titleSearch />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Administrador" />
	<!-- This page CSS -->	
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">
	<@ph.nav />
	
    <section class="no-padding adv-search-section">
		<!-- Slider main container -->
		<div id="swiper1" class="swiper-container">
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Slides -->
				<#list highlightedProperties as highlighted>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${highlighted.imageUrls[0]}"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 col-md-8 col-lg-6 col-sm-offset-2 col-md-offset-4 col-lg-offset-6 slide-desc-col animated fadeInDown slide-desc-${highlighted.id}">
								<div class="slide-desc pull-right">
									<div class="slide-desc-text">
										
										<div class="estate-type">${highlighted.type}</div>
										<div class="transaction-type">${highlighted.transaction}</div>
										<h4>${highlighted.cityStateZip}</h4>
										<div class="clearfix"></div>
										
										<p>${highlighted.description[0..*350]}</p>
									</div>
									<div class="slide-desc-params">	
										<div class="slide-desc-area">
											<img src="/images/area-icon.png" alt="" />${highlighted.area}m<sup>2</sup>
										</div>
										<div class="slide-desc-rooms">
											<img src="/images/rooms-icon.png" alt="" />${highlighted.bedrooms}
										</div>
										<div class="slide-desc-baths">
											<img src="/images/bathrooms-icon.png" alt="" />${highlighted.bathrooms}
										</div>	
										<div class="slide-desc-parking">
											<img src="/images/parking-icon.png" alt="" />${highlighted.garageSize}
										</div>	
									</div>
									<div class="slide-desc-price">
										${highlighted.price?string.currency}
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="slide-buttons slide-buttons-right">
									<a href="#" class="navigation-box navigation-box-next slide-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
									<a href="/detail/${highlighted.id}" class="navigation-box navigation-box-more slide-more"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont fa-lg">&#xe813;</i></div></a>
									<a href="#" class="navigation-box navigation-box-prev slide-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				</#list>
			</div>
		</div>
		<@titleSearch.nav />
    </section>
	
    <section class="section-light bottom-padding-45 section-both-shadow">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-4">
					<div class="feature wow fadeInLeft" id="feature1">
						<div class="feature-icon center-block"><i class="fa fa-building"></i></div>
						<div class="feature-text">
							<h5 class="subtitle-margin"></h5>
							<h3>Departamentos<span class="special-color">.</span></h3>
							<div class="title-separator center-block feature-separator"></div>
							<p>Departamentos en Puebla, los mejores de la ciudad .</p>
						</div>
					</div>
				</div>			
				<div class="col-sm-6 col-lg-4">
					<div class="feature wow fadeInUp" id="feature2">
						<div class="feature-icon center-block"><i class="fa fa-home"></i></div>
						<div class="feature-text">
							<h5 class="subtitle-margin"></h5>
							<h3>casas<span class="special-color">.</span></h3>
							<div class="title-separator center-block feature-separator"></div>
							<p>Casa en Puebla, las mejores para vivir.</p>
						</div>
					</div>
				</div>			
				<div class="col-sm-6 col-lg-4">
					<div class="feature wow fadeInUp" id="feature3">
						<div class="feature-icon center-block"><i class="fa fa-question"></i></div>
						<div class="feature-text">
							<h5 class="subtitle-margin"></h5>
							<h3>Asesorias<span class="special-color">.</span></h3>
							<div class="title-separator center-block feature-separator"></div>
							<p>Renta de casas y departamentos en Puebla: inclusive si no tienes aval nosotros te asesoramos.</p>
						</div>
					</div>
				</div>
		</div>
    </section>

    <section id="featured-offers" class="featured-offers">
		
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin second-color">Alta mente recomendado </h5>
							<h1 class="second-color">ofertas destacadas<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="featured-offers-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev" id="featured-offers-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>								
				</div>
				<div class="col-xs-12">
					<div class="title-separator-secondary"></div>
				</div>
			</div>
		</div>
		<div class="featured-offers-container">
			<div class="owl-carousel" id="featured-offers-owl">
				<#list highlightedProperties as highlighted>
				<div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
							<img src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${highlighted.imageUrls[0]}" alt="" />
							<div class="type-container">
								<div class="estate-type">${highlighted.type}</div>
								<div class="transaction-type">${highlighted.transaction}</div>
							</div>
						</div>
						<div class="featured-offer-text">
							<h4 class="featured-offer-title">${highlighted.cityStateZip}</h4>
							<p>${highlighted.description[0..*350]}</p>
						</div>
						<div class="featured-offer-params">
							<div class="featured-area">
								<img src="/images/area-icon.png" alt="" />${highlighted.area}m<sup>2</sup>
							</div>
							<div class="featured-rooms">
								<img src="/images/rooms-icon.png" alt="" />${highlighted.bedrooms}
							</div>
							<div class="featured-baths">
								<img src="/images/bathrooms-icon.png" alt="" />${highlighted.bathrooms}
							</div>							
						</div>
						<div class="featured-price">
							${highlighted.price?string.currency}
						</div>
					</div>
					<div class="featured-offer-back">
						<div id="featured-map${highlighted.id}" class="featured-offer-map"></div>
						<div class="button">	
							<a href="/detail/${highlighted.id}" class="button-primary">
								<span>read more</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
					</div>
				</div>
				</#list>
			</div>
		</div>
    </section>
	
	<section class="team section-light section-both-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin">Conoce Nuestro</h5>
							<h1>Equipo De Asesores<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="team-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev"  id="team-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-12">
					<div class="title-separator-primary"></div>
				</div>
			</div>
		</div>
		<div class="team-container">
			<div class="owl-carousel" id="team-owl">
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="images/agent1.jpg" alt="" />
							<div class="big-triangle"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="agent-right-sidebar.html"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-phone"></i>
										</span>
										<span>22-21-66-79-72</span>
									</div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-envelope fa-sm"></i>
										</span>
										<span>rosario@rentafacilpuebla.com</span>
									</div>
									<div class="team-social-cont">
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												 <i class="fa fa-facebook"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-twitter"></i>
											</a>
										</div>
									</div>
									<p class="team-text">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5>propetario</h5>
							<h4>Rosario Rodriguez<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="images/agent2.jpg" alt="" />
							<div class="big-triangle"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="agent-right-sidebar.html"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-phone"></i>
										</span>
										<span>(0)-123-456-789</span>
									</div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-envelope fa-sm"></i>
										</span>
										<span>apartment@domain.tld</span>
									</div>
									<div class="team-social-cont">
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-facebook"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-twitter"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-google-plus"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-skype"></i>
											</a>
										</div>
									</div>
									<p class="team-text">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5>agente</h5>
							<h4>Mari<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="images/agent3.jpg" alt="" />
							<div class="big-triangle"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="agent-right-sidebar.html"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-phone"></i>
										</span>
										<span>(0)-123-456-789</span>
									</div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-envelope fa-sm"></i>
										</span>
										<span>apartment@domain.tld</span>
									</div>
									<div class="team-social-cont">
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-facebook"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-twitter"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-google-plus"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-skype"></i>
											</a>
										</div>
									</div>
									<p class="team-text">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5>specialista</h5>
							<h4>Ruben Varradas<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="images/agent4.jpg" alt="" />
							<div class="big-triangle"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="agent-right-sidebar.html"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-phone"></i>
										</span>
										<span>(22-25-12-83-65)</span>
									</div>
									<div class="team-desc-line">
										<span class="team-icon-circle">
											<i class="fa fa-envelope fa-sm"></i>
										</span>
										<span>arzaluz.salinas@gmail.com</span>
									</div>
									<div class="team-social-cont">
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-facebook"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-twitter"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-google-plus"></i>
											</a>
										</div>
										<div class="team-social">
											<a class="team-icon-circle" href="#">
												<i class="fa fa-skype"></i>
											</a>
										</div>
									</div>
									<p class="team-text">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5>sistemas</h5>
							<h4>Cristofer Arzaluz<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section id="testimonials" class="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin second-color">Recomendaciones</h5>
							<h1 class="second-color">Nuestros Clientes Dicen<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="testimonials-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev" id="testimonials-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-12">
					<div class="title-separator-secondary"></div>
				</div>
			</div>
		</div>

			<div class="container margin-top-90">
				<div class="row">
					<div class="col-xs-12 owl-carousel" id="testimonials-owl">
						<div class="testimonial">
							<img src="images/testimonials1.jpg" alt="" class="testimonials-photo" />	
							<div class="testimonials-content">							
								<p class="lead">Familia Torres Romero</p>
								<p>El servicio de rentafacilpuebla.com y su personal es sumamente profesional, ellos se ajustaron a nuestro presupuesto y necisidades de vivienda. Nos consigueron casa muy rapido y en la zona apropiada. Nosotrros nos encontrábamos fuera de Puebla y el personal de rentafacilpuebla.com nos asesoró para cuando llegaramos a Puebla tuviéramos casa.</p>								
							</div>
							<div class="big-triangle">							
								</div>
								<div class="big-icon"><i class="fa fa-quote-right fa-lg"></i></div>
						</div>
						<div class="testimonial">
							<img src="images/testimonials2.jpg" alt="" class="testimonials-photo" />	
							<div class="testimonials-content">
								<p class="lead">Vargas Muños Gilberto</p>
								<p>la señora rosario conseguira testimonio.</p>
								<div class="big-triangle">							
								</div>
								<div class="big-icon"><i class="fa fa-quote-right fa-lg"></i></div>
							</div>
						</div>
						<div class="testimonial">
							<img src="images/testimonials3.jpg" alt="" class="testimonials-photo" />
							<div class="testimonials-content">
								<p class="lead">Paola Brown &amp; Tommy</p>
								<p>la señora rosario conseguira un tercer testimonio.</p>
								<div class="big-triangle">							
								</div>
								<div class="big-icon"><i class="fa fa-quote-right fa-lg"></i></div>
							</div>
						</div>
					</div>
				</div>
			</div>

	</section>
	
	<section class="section-light bottom-padding-45 section-top-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin">Aproveche Nuestras</h5>
							<h1>Novedades<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="grid-offers-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev" id="grid-offers-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-12">
					<div class="title-separator-primary"></div>
				</div>
			</div>
		</div>
		<div class="grid-offers-container">
			<div class="owl-carousel" id="grid-offers-owl">
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
	</section>
	
	<section class="section-light top-padding-45 bottom-padding-45">
		<div class="container">
			<div class="row count-container">
				<div class="col-xs-6 col-lg-6">
					<div class="number" id="number1">
						<div class="number-img">	
							<i class="fa fa-building"></i>
						</div>
						<span class="number-label text-color2">APARTMENTS</span>
						<span class="number-big text-color3 count" data-from="0" data-to="${apartmentsCount}" data-speed="20"></span>
					</div>
				</div>
				<div class="col-xs-6 col-lg-6 number_border">
					<div class="number" id="number2">
						<div class="number-img">	
							<i class="fa fa-home"></i>	
						</div>			
						<span class="number-label text-color2">HOUSES</span>
						<span class="number-big text-color3 count" data-from="0" data-to="${housesCount}" data-speed="20"></span>
					</div>
				</div>
			</div>
		</div>
	</section>	
		
    <@footer.nav />
</div>	

<@endscripts.nav />
<script type="text/javascript" src="/js/title-search.js"></script>
<!-- google maps initialization -->
	<script type="text/javascript">
            google.maps.event.addDomListener(window, 'load', init);
			function init() {
				
				//mapInitAddress("narodowa 18 Pruszków","featured-map1","images/pin-house.png", false);
				<#list highlightedProperties as highlighted>
				<#assign rspHouseType=(highlighted.type == "Casa")>
				mapInit(${highlighted.lat},${highlighted.lng},"featured-map${highlighted.id}",'${rspHouseType?then("/images/pin-house.png", "/images/pin-apartment.png")}', false);
				</#list>
				
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