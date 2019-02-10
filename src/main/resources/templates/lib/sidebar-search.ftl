<#macro nav>
<h3 class="sidebar-title">Personalizar Busqueda<span class="special-color">.</span></h3>
<div class="title-separator-primary"></div>
<form id="sidebarSearchForm" class="adv-search-form" action="/search" method="GET">
<#if searchPropertyType?? && searchPropertyType != "Casas o departamentos">
<input type="hidden" name="type" value="${searchPropertyType}" />
</#if>
<#if propiedad??>
	<input type="hidden" name="type" value="${propiedad.type}" />
</#if>
<div class="sidebar-select-cont">
	<select name="transaction" class="bootstrap-select" title="Transaccion:" multiple>
		<option>En Venta</option>
		<option>En Renta</option>
	</select>
</div>
<!-- /.transaction, city and location selectors -->
<div class="adv-search-range-cont">	
	<label for="slider-range-price-sidebar-value" class="adv-search-label">Precio</label>
	<span>$</span>
	<input name="priceRange" type="text" id="slider-range-price-sidebar-value" readonly class="adv-search-amount">
	<div class="clearfix"></div>
	<div id="slider-range-price-sidebar" data-min="<#if searchMinPrice??>${searchMinPrice?c}<#else>0</#if>" data-max="<#if searchMaxPrice??>${searchMaxPrice?c}<#else>300000</#if>" class="slider-range"></div>
</div>
<div class="adv-search-range-cont">	
	<label for="slider-range-area-sidebar-value" class="adv-search-label">Area:</label>
	<span>m<sup>2</sup></span>
	<input name="areaRange" type="text" id="slider-range-area-sidebar-value" readonly class="adv-search-amount">
	<div class="clearfix"></div>
	<div id="slider-range-area-sidebar" data-min="0" data-max="500" class="slider-range"></div>
</div>
<div class="adv-search-range-cont">	
	<label for="slider-range-bedrooms-sidebar-value" class="adv-search-label">Recamaras:</label>
	<input name="roomRange" type="text" id="slider-range-bedrooms-sidebar-value" readonly class="adv-search-amount">
	<div class="clearfix"></div>
	<div id="slider-range-bedrooms-sidebar" data-min="1" data-max="10" class="slider-range"></div>
</div>
<div class="adv-search-range-cont">	
	<label for="slider-range-bathrooms-sidebar-value" class="adv-search-label">Baños:</label>
	<input name="bathRange" type="text" id="slider-range-bathrooms-sidebar-value" readonly class="adv-search-amount">
	<div class="clearfix"></div>
	<div id="slider-range-bathrooms-sidebar" data-min="1" data-max="4" class="slider-range"></div>
</div>
<div class="sidebar-search-button-cont">
	<a hef="#" onclick="document.forms['sidebarSearchForm'].submit();return false;" class="button-primary">
		<span>Buscar</span>
		<div class="button-triangle"></div>
		<div class="button-triangle2"></div>
		<div class="button-icon"><i class="fa fa-search"></i></div>
	</a>
</div>
</form>
<div class="sidebar-title-cont">
	<h4 class="sidebar-title">Ofertas<span class="special-color">.</span></h4>
	<div class="title-separator-primary"></div>
</div>
<!-- /.FEATURE OFFERS TITLE -->
<div class="sidebar-featured-cont">
	<#list highlightedProperties as hProperty>
	<div class="sidebar-featured">
		<a class="sidebar-featured-image" href="estate-details-right-sidebar.html">
			<img src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${hProperty.imageUrls[0]}" alt="" />
			<div class="sidebar-featured-type">
				<div class="sidebar-featured-estate">${hProperty.type[0..*1]?upper_case}</div>
				<div class="sidebar-featured-transaction">${hProperty.transaction[3..*1]?upper_case}</div>
			</div>
		</a>
		<div class="sidebar-featured-title"><a href="estate-details-right-sidebar.html">${hProperty.cityStateZip}</a></div>
		<div class="sidebar-featured-price">${hProperty.price?string.currency}</div>
		<div class="clearfix"></div>
	</div>
	</#list>
</div>
<!-- /.FEATURE OFFERS CONTENT -->
<div class="sidebar-title-cont">
	<h4 class="sidebar-title">Novedades<span class="special-color">.</span></h4>
	<div class="title-separator-primary"></div>
</div>
<!-- /.LATEST NEWS TITLE -->
<div class="sidebar-blog-cont">
	<#list newArrivals as nProperty>
	<article>
		<a href="blog-right-sidebar.html"><img src="https://s3.us-east-2.amazonaws.com/rentafacilpuebla/${nProperty.imageUrls[0]}" alt="" class="sidebar-blog-image" /></a>
		<div class="sidebar-blog-title"><a href="/detail/${nProperty.id}">${nProperty.cityStateZip}</a></div>
		<div class="sidebar-blog-date">${nProperty.price?string.currency}</div>
		<div class="clearfix"></div>					
	</article>
	</#list>
</div>
<!-- /.LATEST NEWS CONTENT -->
</#macro>