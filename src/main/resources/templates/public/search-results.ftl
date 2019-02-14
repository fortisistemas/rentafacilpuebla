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
								<h5 class="subtitle-margin">${searchPropertyType} ${searchTransaction}</h5>
								<h1>${resultSize} Propiedades Encontradas<span class="special-color">.</span></h1>
							</div>
							<div class="col-xs-12 col-lg-6">											
								<div class="order-by-container">
									<select name="sort" class="bootstrap-select" title="Ordenar Por:">
										<option>Precio Alto</option>
										<option>Precio Bajo</option>
										<option>Area Grande</option>
										<option>Area Pequeña</option>
									</select>
								</div>	
							</div>
						</div>
						<div class="row list-offer-row">
							<div class="col-xs-12">
								<#list realstateProperties as propiedad>
									<div class="list-offer">
										<div class="list-offer-left">
											<div class="list-offer-front">
										
												<div class="list-offer-photo">
													<#assign hasImages=propiedad.imageUrls?size gt 0>
													<#if hasImages>
														<img src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${propiedad.imageUrls[0]}" alt="" />
													<#else>
														<img src="/images/propiedad.jpg" alt="" />
													</#if>
													<div class="type-container">
														<div class="estate-type">${propiedad.type}</div>
														<div class="transaction-type">${propiedad.transaction}</div>
													</div>
												</div>
												<div class="list-offer-params">
													<div class="list-area">
														<img src="/images/area-icon.png" alt="" /><#if propiedad.area??>${propiedad.area}<#else>0</#if>M<sup>2</sup>
													</div>
													<div class="list-rooms">
														<img src="images/rooms-icon.png" alt="" />${propiedad.bedrooms}
													</div>
													<div class="list-baths">
														<img src="images/bathrooms-icon.png" alt="" />${propiedad.bathrooms}
													</div>							
												</div>	
											</div>
											<div class="list-offer-back">
												<div id="list-map_${propiedad.id}" class="list-offer-map"></div>
											</div>
										</div>
										<a class="list-offer-right" href="/detail/${propiedad.id}">
											<div class="list-offer-text">
												<i class="fa fa-map-marker list-offer-localization hidden-xs"></i>
												<div class="list-offer-h4"><h4 class="list-offer-title"><#if propiedad.neighborghood??>${propiedad.neighborghood}</#if> <#if propiedad.cityStateZip??>${propiedad.cityStateZip}</#if></h4></div>
												<div class="clearfix"></div>
												 ${propiedad.description}
												<div class="clearfix"></div>
											</div>
											<div class="price-list-cont">
												<div class="list-price">
													${propiedad.price?string.currency}
												</div>	
											</div>
										</a>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</#list>	
							</div>
						</div>
						
						<div class="offer-pagination margin-top-30">
							<#assign _m = ((resultSize % 5) gt 0)?then(1,0)>
							<#assign _d = resultSize / 5>
							<#assign x = _d?floor + _m>
							<#if x gt 1>
								<#if currentPage != 1>
								<a href="javascript:pageClick(${currentPage-1})" class="prev"><i class="jfont">&#xe800;</i></a>
								</#if>
								<#list 1..x as i>
									<#if currentPage == i>
										<a href="#" class="active">${i}</a>
									<#else>
										<a href="javascript:pageClick(${i})">${i}</a>
									</#if>
								</#list>
								<#if currentPage != x>
									<a href="javascript:pageClick(${currentPage+1})" class="next"><i class="jfont">&#xe802;</i></a>
								</#if>
							</#if>
							
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
<script type="text/javascript" src="/js/title-search.js"></script>
<script type="text/javascript">
/**
* 
*/
function pageClick(pageNum) {
	var currentAddress = window.location.href;
	var newAddress = '';
	if(currentAddress.includes('page')) {
		newAddress = currentAddress.replace(/(page=)(\d{1,2})/g, '$1' + pageNum);
	} else if (currentAddress.includes('?')) {
		newAddress = currentAddress + '&page=' + pageNum;
	} else {
		newAddress = currentAddress + '?page=' + pageNum;
	}
	window.location.href = newAddress;
}

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
		
		<#list realstateProperties as rsp>
			<#if rsp.lat?? && rsp.lng??>
				<#assign rspHouseType=(rsp.type == "Casa")>
				mapInit(${rsp.lat},${rsp.lng},'list-map_${rsp.id}','${rspHouseType?then("/images/pin-house.png", "/images/pin-apartment.png")}', false);
			</#if>
		</#list>
	}

	$('#titleSearchApartmentTransaction').change( function() {
		if ( !$(this).val() ) {
			$('#slider-range-price1').attr('data-min', ${minPrice?c});
			$('#slider-range-price1').attr('data-max', ${maxPrice?c});
			$('#slider-range-price1').slider("option", "min", ${minPrice?c});
			$('#slider-range-price1').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price1-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		} else if ($(this).val().length == 2) {
			$('#slider-range-price1').attr('data-min', ${minPrice?c});
			$('#slider-range-price1').attr('data-max', ${maxPrice?c});
			$('#slider-range-price1').slider("option", "min", ${minPrice?c});
			$('#slider-range-price1').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price1-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		} else if ('En Renta' == $(this).val()[0]) {
			$('#slider-range-price1').attr('data-min', ${minLeasePrice?c});
			$('#slider-range-price1').attr('data-max', ${maxLeasePrice?c});
			$('#slider-range-price1').slider("option", "min", ${minLeasePrice?c});
			$('#slider-range-price1').slider("option", "max", ${maxLeasePrice?c});
			$('#slider-range-price1-value').val(${minLeasePrice?c} + ' - ' + ${maxLeasePrice?c});
		} else if ('En Venta' == $(this).val()[0]){
			$('#slider-range-price1').attr('data-min', ${minSalePrice?c});
			$('#slider-range-price1').attr('data-max', ${maxSalePrice?c});
			$('#slider-range-price1').slider("option", "min", ${minSalePrice?c});
			$('#slider-range-price1').slider("option", "max", ${maxSalePrice?c});
			$('#slider-range-price1-value').val(${minSalePrice?c} + ' - ' + ${maxSalePrice?c});
		} else {
			$('#slider-range-price1').attr('data-min', ${minPrice?c});
			$('#slider-range-price1').attr('data-max', ${maxPrice?c});
			$('#slider-range-price1').slider("option", "min", ${minPrice?c});
			$('#slider-range-price1').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price1-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		}
	});

	$('#titleSearchHouseTransaction').change( function() {
		if( !$(this).val() ) {
			$('#slider-range-price2').attr('data-min', ${minPrice?c});
			$('#slider-range-price2').attr('data-max', ${maxPrice?c});
			$('#slider-range-price2').slider("option", "min", ${minPrice?c});
			$('#slider-range-price2').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price2-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		} else if($(this).val().length == 2) {
			$('#slider-range-price2').attr('data-min', ${minPrice?c});
			$('#slider-range-price2').attr('data-max', ${maxPrice?c});
			$('#slider-range-price2').slider("option", "min", ${minPrice?c});
			$('#slider-range-price2').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price2-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		} else if ('En Renta' == $(this).val()[0]) {
			$('#slider-range-price2').attr('data-min', ${minLeasePrice?c});
			$('#slider-range-price2').attr('data-max', ${maxLeasePrice?c});
			$('#slider-range-price2').slider("option", "min", ${minLeasePrice?c});
			$('#slider-range-price2').slider("option", "max", ${maxLeasePrice?c});
			$('#slider-range-price2-value').val(${minLeasePrice?c} + ' - ' + ${maxLeasePrice?c});
		} else if ('En Venta' == $(this).val()[0]){
			$('#slider-range-price2').attr('data-min', ${minSalePrice?c});
			$('#slider-range-price2').attr('data-max', ${maxSalePrice?c});
			$('#slider-range-price2').slider("option", "min", ${minSalePrice?c});
			$('#slider-range-price2').slider("option", "max", ${maxSalePrice?c});
			$('#slider-range-price2-value').val(${minSalePrice?c} + ' - ' + ${maxSalePrice?c});
		} else {
			$('#slider-range-price2').attr('data-min', ${minPrice?c});
			$('#slider-range-price2').attr('data-max', ${maxPrice?c});
			$('#slider-range-price2').slider("option", "min", ${minPrice?c});
			$('#slider-range-price2').slider("option", "max", ${maxPrice?c});
			$('#slider-range-price2-value').val(${minPrice?c} + ' - ' + ${maxPrice?c});
		}
	});
});
</script>
	
</body>
</html>