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
	<div class="sidebar-featured">
		<a class="sidebar-featured-image" href="estate-details-right-sidebar.html">
			<img src="/images/sidebar-featured1.jpg" alt="" />
			<div class="sidebar-featured-type">
				<div class="sidebar-featured-estate">A</div>
				<div class="sidebar-featured-transaction">S</div>
			</div>
		</a>
		<div class="sidebar-featured-title"><a href="estate-details-right-sidebar.html">Fort Collins, Colorado 80523, USA</a></div>
		<div class="sidebar-featured-price">$ 320 000</div>
		<div class="clearfix"></div>						
	</div>
	<div class="sidebar-featured">
		<a class="sidebar-featured-image" href="estate-details-right-sidebar.html">
			<img src="/images/sidebar-featured2.jpg" alt="" />
			<div class="sidebar-featured-type">
				<div class="sidebar-featured-estate">A</div>
				<div class="sidebar-featured-transaction">S</div>
			</div>
		</a>
		<div class="sidebar-featured-title"><a href="estate-details-right-sidebar.html">West Fourth Street, New York 10003, USA</a></div>
		<div class="sidebar-featured-price">$ 350 000</div>
		<div class="clearfix"></div>						
	</div>
	<div class="sidebar-featured">
		<a class="sidebar-featured-image" href="estate-details-right-sidebar.html">
			<img src="/images/sidebar-featured3.jpg" alt="" />
			<div class="sidebar-featured-type">
				<div class="sidebar-featured-estate">A</div>
				<div class="sidebar-featured-transaction">S</div>
			</div>
		</a>
		<div class="sidebar-featured-title"><a href="estate-details-right-sidebar.html">E. Elwood St. Phoenix, AZ 85034, USA</a></div>
		<div class="sidebar-featured-price">$ 410 000</div>
		<div class="clearfix"></div>					
	</div>
</div>
<!-- /.FEATURE OFFERS CONTENT -->
<div class="sidebar-title-cont">
	<h4 class="sidebar-title">Novedades<span class="special-color">.</span></h4>
	<div class="title-separator-primary"></div>
</div>
<!-- /.LATEST NEWS TITLE -->
<div class="sidebar-blog-cont">
	<article>
		<a href="blog-right-sidebar.html"><img src="/images/footer-blog1.jpg" alt="" class="sidebar-blog-image" /></a>
		<div class="sidebar-blog-title"><a href="blog-right-sidebar.html">This post title, lorem ipsum dolor sit</a></div>
		<div class="sidebar-blog-date"><i class="fa fa-calendar-o"></i>28/09/15</div>
		<div class="clearfix"></div>					
	</article>
	<article>
		<a href="blog-right-sidebar.html"><img src="/images/footer-blog2.jpg" alt="" class="sidebar-blog-image" /></a>
		<div class="sidebar-blog-title"><a href="blog-right-sidebar.html">This post title, lorem ipsum dolor sit</a></div>
		<div class="sidebar-blog-date"><i class="fa fa-calendar-o"></i>28/09/15</div>
		<div class="clearfix"></div>					
	</article>
	<article>
		<a href="blog-right-sidebar.html"><img src="/images/footer-blog3.jpg" alt="" class="sidebar-blog-image" /></a>
		<div class="sidebar-blog-title"><a href="blog-right-sidebar.html">This post title, lorem ipsum dolor sit</a></div>
		<div class="sidebar-blog-date"><i class="fa fa-calendar-o"></i>28/09/15</div>
		<div class="clearfix"></div>					
	</article>
</div>
<!-- /.LATEST NEWS CONTENT -->
</#macro>