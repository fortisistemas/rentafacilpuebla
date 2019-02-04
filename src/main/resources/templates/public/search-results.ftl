<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<#import "../lib/sidebar-search.ftl" as sbSearch />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Resultados de busqueda" />
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">

<@ph.nav />
	
  		
    <section class="adv-search-section no-padding">
		<div id="offers-map"></div>
		<form class="adv-search-form" action="#">
			<div class="adv-search-cont">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-lg-11 adv-search-icons">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs adv-search-tabs" role="tablist">
								<li role="presentation" class="active" data-toggle="tooltip" data-placement="top" title="apartments"><a href="#apartments" aria-controls="apartments" role="tab" data-toggle="tab" id="adv-search-tab1"><i class="fa fa-building"></i></a></li>
								<li role="presentation" data-toggle="tooltip" data-placement="top" title="houses"><a href="#houses" aria-controls="houses" role="tab" data-toggle="tab" id="adv-search-tab2"><i class="fa fa-home"></i></a></li>
								<li role="presentation" data-toggle="tooltip" data-placement="top" title="commercials"><a href="#commercials" aria-controls="commercials" role="tab" data-toggle="tab" id="adv-search-tab3"><i class="fa fa-industry"></i></a></li>
								<li role="presentation" data-toggle="tooltip" data-placement="top" title="lands"><a href="#lands" aria-controls="lands" role="tab" data-toggle="tab" id="adv-search-tab4"><i class="fa fa-tree"></i></a></li>
							</ul>
						</div>
						<div class="col-lg-1 visible-lg">
							<a id="adv-search-hide" href="#"><i class="jfont">&#xe801;</i></a>
						</div>
					</div>
				</div>
				<div class="container">
			<div class="row tab-content">
				<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade in active" id="">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="transaction1" class="bootstrap-select" title="Transaccion:" multiple>
								<option>Se Vende</option>
								<option>Se Renta</option>
							</select>
						</div>
						<!--<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="country1" class="bootstrap-select" title="Country:" multiple data-actions-box="true">
								
								<option>United States</option>
								<option>Canada</option>
								<option>Mexico</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="city1" class="bootstrap-select" title="City:" multiple data-actions-box="true">
								<option>New York</option>
								<option>Los Angeles</option>
								<option>Chicago</option>
								<option>Houston</option>
								<option>Philadelphia</option>
								<option>Phoenix</option>
								<option>Washington</option>
								<option>Salt Lake Cty</option>
								<option>Detroit</option>
								<option>Boston</option>
							</select>
						</div>-->
				<<div class="col-xs-12 col-sm-6 col-lg-3">
							<!--<select name="location1" class="bootstrap-select" title="Location:" multiple data-actions-box="true">-->
								<!--<option>Some location 1</option>
								<option>Some location 2</option>
								<option>Some location 3</option>
								<option>Some location 4</option>-->
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-price1-value" class="adv-search-label">Precio:</label>
								<span>$</span>
								<input type="text" id="slider-range-price1-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-price1" data-min="0" data-max="300000" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-area1-value" class="adv-search-label">Area:</label>
								<span>m<sup>2</sup></span>
								<input type="text" id="slider-range-area1-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-area1" data-min="0" data-max="180" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-bedrooms1-value" class="adv-search-label">Recamaras:</label>
								<input type="text" id="slider-range-bedrooms1-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-bedrooms1" data-min="1" data-max="10" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-bathrooms1-value" class="adv-search-label">Baños:</label>
								<input type="text" id="slider-range-bathrooms1-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-bathrooms1" data-min="1" data-max="4" class="slider-range"></div>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade" id="Casas">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="transaction2" class="bootstrap-select" title="Transaccion:" multiple>
								<option>For sale</option>
								<option>For rent</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="country2" class="bootstrap-select" title="Country:" multiple data-actions-box="true">
								
								<option>United States</option>
								<option>Canada</option>
								<option>Mexico</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="city2" class="bootstrap-select" title="City:" multiple data-actions-box="true">
								<option>New York</option>
								<option>Los Angeles</option>
								<option>Chicago</option>
								<option>Houston</option>
								<option>Philadelphia</option>
								<option>Phoenix</option>
								<option>Washington</option>
								<option>Salt Lake Cty</option>
								<option>Detroit</option>
								<option>Boston</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="location2" class="bootstrap-select" title="Location:" multiple data-actions-box="true">
								<option>Some location 1</option>
								<option>Some location 2</option>
								<option>Some location 3</option>
								<option>Some location 4</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-price2-value" class="adv-search-label">Precio:</label>
								<span>$</span>
								<input type="text" id="slider-range-price2-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-price2" data-min="0" data-max="300000" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-area2-value" class="adv-search-label">Area:</label>
								<span>m<sup>2</sup></span>
								<input type="text" id="slider-range-area2-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-area2" data-min="0" data-max="180" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-bedrooms2-value" class="adv-search-label">Bedrooms:</label>
								<input type="text" id="slider-range-bedrooms2-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-bedrooms2" data-min="1" data-max="10" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-bathrooms2-value" class="adv-search-label">Bathrooms:</label>
								<input type="text" id="slider-range-bathrooms2-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-bathrooms2" data-min="1" data-max="4" class="slider-range"></div>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade" id="commercials">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="transaction3" class="bootstrap-select" title="Transaction:" multiple>
								<option>For sale</option>
								<option>For rent</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="country3" class="bootstrap-select" title="Country:" multiple data-actions-box="true">
								
								<option>United States</option>
								<option>Canada</option>
								<option>Mexico</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="city3" class="bootstrap-select" title="City:" multiple data-actions-box="true">
								<option>New York</option>
								<option>Los Angeles</option>
								<option>Chicago</option>
								<option>Houston</option>
								<option>Philadelphia</option>
								<option>Phoenix</option>
								<option>Washington</option>
								<option>Salt Lake Cty</option>
								<option>Detroit</option>
								<option>Boston</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="location3" class="bootstrap-select" title="Location:" multiple data-actions-box="true">
								<option>Some location 1</option>
								<option>Some location 2</option>
								<option>Some location 3</option>
								<option>Some location 4</option>
							</select>
						</div>
					</div>
					<div class="row">
					<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="type3" class="bootstrap-select short-margin" title="Type:" multiple>
								<option>Shop/service</option>
								<option>Factory</option>
								<option>Warehouse</option>
								<option>Office</option>
								<option>Other</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-price3-value" class="adv-search-label">Price:</label>
								<span>$</span>
								<input type="text" id="slider-range-price3-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-price3" data-min="0" data-max="300000" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-area3-value" class="adv-search-label">Area:</label>
								<span>m<sup>2</sup></span>
								<input type="text" id="slider-range-area3-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-area3" data-min="0" data-max="180" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-bedrooms3-value" class="adv-search-label">Rooms:</label>
								<input type="text" id="slider-range-bedrooms3-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-bedrooms3" data-min="1" data-max="10" class="slider-range"></div>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade" id="lands">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="transaction4" class="bootstrap-select" title="Transaction:" multiple>
								<option>For sale</option>
								<option>For rent</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="country4" class="bootstrap-select" title="Country:" multiple data-actions-box="true">
								<option>United States</option>
								<option>Canada</option>
								<option>Mexico</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="city4" class="bootstrap-select" title="City:" multiple data-actions-box="true">
								<option>New York</option>
								<option>Los Angeles</option>
								<option>Chicago</option>
								<option>Houston</option>
								<option>Philadelphia</option>
								<option>Phoenix</option>
								<option>Washington</option>
								<option>Salt Lake Cty</option>
								<option>Detroit</option>
								<option>Boston</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="location4" class="bootstrap-select" title="Location:" multiple data-actions-box="true">
								<option>Some location 1</option>
								<option>Some location 2</option>
								<option>Some location 3</option>
								<option>Some location 4</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<select name="type4" class="bootstrap-select short-margin" title="Type:" multiple>
								<option>Field</option>
								<option>Recreational</option>
								<option>Orchard</option>
								<option>Forest</option>
								<option>Other</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-price4-value" class="adv-search-label">Price:</label>
								<span>$</span>
								<input type="text" id="slider-range-price4-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-price4" data-min="0" data-max="300000" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							<div class="adv-search-range-cont">	
								<label for="slider-range-area4-value" class="adv-search-label">Area:</label>
								<span>ha</span>
								<input type="text" id="slider-range-area4-value" readonly class="adv-search-amount">
								<div class="clearfix"></div>
								<div id="slider-range-area4" data-min="0" data-max="500" class="slider-range"></div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-3">
							
						</div>
					</div>
					
				</div>
			</div>
		</div>
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-3 col-md-offset-6 col-lg-offset-9 adv-search-button-cont">
							<a href="#" class="button-primary pull-right">
								<span>search</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</form>
    </section>

	<section class="section-light section-top-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-9 col-md-push-3">
						<div class="row">
							<div class="col-xs-12 col-lg-6">
								<h5 class="subtitle-margin">Departamentos En Venta o En Renta</h5>
								<h1>Propiedades Encontradas<span class="special-color">.</span></h1>
							</div>
							<div class="col-xs-12 col-lg-6">											
								<!--<div class="view-icons-container">
									<a class="view-box" href="listing-grid-right-sidebar.html"><img src="images/grid-icon.png" alt=""/></a>
									<a class="view-box view-box-active"><img src="images/list-icon.png" alt=""/></a>
								</div>-->
								<div class="order-by-container">
									<select name="sort" class="bootstrap-select" title="Ordenar Por:">
										<option>Precio Alto</option>
										<option>Precio Bajo</option>
										<option>Area Grande</option>
										<option>Area Pequeña</option>
									</select>
								</div>	
							</div>							
							<!--<div class="col-xs-12">
								<div class="title-separator-primary"></div>
							</div>-->
						</div>
						<div class="row list-offer-row">
							<div class="col-xs-12">
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer1.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map1" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>	
										</div>
									</a>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer2.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map2" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>							
										</div>
									</a>
									<div class="clearfix"></div>
								</div>
								
								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer3.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map3" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>
										</div>
									</a>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer4.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map4" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>
										</div>
									</a>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer5.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map5" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>
										</div>
									</a>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer6.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map6" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>
										</div>
									</a>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>
								<div class="list-offer">
									<div class="list-offer-left">
										<div class="list-offer-front">
									
											<div class="list-offer-photo">
												<img src="images/grid-offer7.jpg" alt="" />
												<div class="type-container">
													<div class="estate-type">apartment</div>
													<div class="transaction-type">sale</div>
												</div>
											</div>
											<div class="list-offer-params">
												<div class="list-area">
													<img src="images/area-icon.png" alt="" />54m<sup>2</sup>
												</div>
												<div class="list-rooms">
													<img src="images/rooms-icon.png" alt="" />3
												</div>
												<div class="list-baths">
													<img src="images/bathrooms-icon.png" alt="" />1
												</div>							
											</div>	
										</div>
										<div class="list-offer-back">
											<div id="list-map7" class="list-offer-map"></div>
										</div>
									</div>
									<a class="list-offer-right" href="/detail">
										<div class="list-offer-text">
											<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
											<div class="list-offer-h4"><h4 class="list-offer-title">Fort Collins, Colorado 80523, USA</h4></div>
											<div class="clearfix"></div>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.
											<div class="clearfix"></div>
										</div>
										<div class="price-list-cont">
											<div class="list-price">
												$ 320 000
											</div>
										</div>
									</a>
									<div class="clearfix"></div>
								</div>		
							</div>
						</div>
						
						<div class="offer-pagination margin-top-30">
							<a href="#" class="prev"><i class="jfont">&#xe800;</i></a><a class="active">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#" class="next"><i class="jfont">&#xe802;</i></a>
							<div class="clearfix"></div>
						</div>
				</div>
				<div class="col-xs-12 col-md-3 col-md-pull-9">
					<div class="sidebar-left">
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
				var locations = [
					[40.6128,-73.9976, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer1.jpg", "Fort Collins, Colorado 80523, USA", "$320 000"],
					[40.7222,-73.7903, "images/pin-commercial.png", "estate-details-right-sidebar.html", "images/infobox-offer2.jpg", "West Fourth Street, New York 10003, USA", "$350 000"],
					[41.0306,-73.7669, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer3.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$300 000"],
					[41.3006,-72.9440, "images/pin-apartment.png", "estate-details-right-sidebar.html", "images/infobox-offer4.jpg", "Fort Collins, Colorado 80523, USA", "$410 000"],
					[42.2418,-74.3626, "images/pin-land.png", "estate-details-right-sidebar.html", "images/infobox-offer5.jpg", "West Fourth Street, New York 10003, USA", "$295 000"],
					[38.8974,-77.0365, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer6.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$390 600"],
					[38.7860,-77.0129, "images/pin-apartment.png", "estate-details-right-sidebar.html", "images/infobox-offer7.jpg", "Fort Collins, Colorado 80523, USA", "$299 000"],
					[41.2693,-70.0874, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer8.jpg", "Fort Collins, Colorado 80523, USA", "$600 000"],
					[33.7544,-84.3857, "images/pin-commercial.png", "estate-details-right-sidebar.html", "images/infobox-offer9.jpg", "West Fourth Street, New York 10003, USA", "$350 000"],
					[33.7337,-84.4443, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer10.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$550 000"],
					[33.8588,-84.4858, "images/pin-land.png", "estate-details-right-sidebar.html", "images/infobox-offer1.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$670 000"],
					[34.0254,-84.3560, "images/pin-commercial.png", "estate-details-right-sidebar.html", "images/infobox-offer5.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$300 000"],
					[39.6282,-86.1320, "images/pin-apartment.png", "estate-details-right-sidebar.html", "images/infobox-offer6.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$390 600"],
					[40.5521,-84.5658, "images/pin-apartment.png", "estate-details-right-sidebar.html", "images/infobox-offer2.jpg", "West Fourth Street, New York 10003, USA", "$350 000"],
					[41.6926,-87.6021, "images/pin-house.png", "estate-details-right-sidebar.html", "images/infobox-offer5.jpg", "E. Elwood St. Phoenix, AZ 85034, USA", "$300 000"]
				];
				offersMapInit("offers-map",locations);
				
				mapInit(41.2693,-70.0874,"list-map1","images/pin-house.png", false);
				mapInit(33.7544,-84.3857,"list-map2","images/pin-apartment.png", false);
				mapInit(33.7337,-84.4443,"list-map3","images/pin-land.png", false);
				mapInit(33.8588,-84.4858,"list-map4","images/pin-commercial.png", false);
				mapInit(34.0254,-84.3560,"list-map5","images/pin-apartment.png", false);
				mapInit(40.6128,-73.9976,"list-map6","images/pin-house.png", false);
				mapInit(40.6128,-73.7903,"list-map7","images/pin-house.png", false);
			}
	</script>
	
	</body>
</html>