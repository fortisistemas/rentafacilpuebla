<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<#import "../lib/sidebar-search.ftl" as sbSearch />
<#import "../lib/title-search.ftl" as titleSearch />
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
		<@titleSearch.nav />
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

<!-- PAGE SPECIFIC SCRIPT -->	
<script type="text/javascript">
/**
* 
*/
$(document).on("ready", function () {
	// Google maps initialization
	google.maps.event.addDomListener(window, 'load', init);
	/**
	* google maps dom listener on load
	*/
	function init() {
		var locations = [
			<#list realstateProperties as rsp>
				<#if rsp.lat?? && rsp.lng??>
					<#assign rspHouseType=(rsp.type == "Casa")>
					<#assign hasImages=rsp.imageUrls?size gt 0>
					[${rsp.lat},${rsp.lng},
					'${rspHouseType?then("/images/pin-house.png", "/images/pin-apartment.png")}',
					'/detail/${rsp.id}',
					'${hasImages?then("https://s3.us-east-2.amazonaws.com/rentafacilpuebla/" + rsp.imageUrls[0],"/images/propiedad.jpg")}', 
					'<#if rsp.cityStateZip??>${rsp.cityStateZip}<#else>PUEBLA</#if>', '${rsp.price?string.currency}'],
				</#if>
			</#list>
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
});
</script>
	
</body>
</html>