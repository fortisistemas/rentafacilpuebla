<#macro nav>
<div class="adv-search-cont">
	<!-- .container -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-lg-11 adv-search-icons">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs adv-search-tabs" role="tablist">
					<li role="presentation" class="active" data-toggle="tooltip" data-placement="top" title="Departamentos"><a href="#apartments" aria-controls="apartments" role="tab" data-toggle="tab" id="adv-search-tab1"><i class="fa fa-building"></i></a></li>
					<li role="presentation" data-toggle="tooltip" data-placement="top" title="Casas"><a href="#houses" aria-controls="houses" role="tab" data-toggle="tab" id="adv-search-tab2"><i class="fa fa-home"></i></a></li>
				</ul>
			</div>
			<div class="col-lg-1 visible-lg">
				<a id="adv-search-hide" href="#"><i class="jfont">&#xe801;</i></a>
			</div>
		</div>
		<!-- ./row -->
	</div>
	<!-- ./container -->
	<!-- .container -->
	<div class="container">
		<!-- .row tab-content -->
		<div class="row tab-content">
			<!-- .tabpanel #apartments -->
			<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade in active" id="apartments">
			<form id="titleSearchApartment" class="adv-search-form" action="/search" method="GET">
				<input type="hidden" name="type" value="Departamento" />
				<div class="row" style="margin-top:24px;">
					<h4>Buscar Departamentos</h4>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-lg-3">
					<select name="transaction" class="bootstrap-select" title="Transaccion:" multiple>
						<option>En Venta</option>
						<option>En Renta</option>
					</select>
					</div>
				</div>
				<!-- /.row #transaction -->
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-price1-value" class="adv-search-label">Precio:</label>
							<span>$</span>
							<input type="text" name="priceRange" id="slider-range-price1-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-price1" data-min="0" data-max="300000" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #precio -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-area1-value" class="adv-search-label">Area:</label>
							<span>m<sup>2</sup></span>
							<input type="text" name="areaRange" id="slider-range-area1-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-area1" data-min="0" data-max="180" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #area -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-bedrooms1-value" class="adv-search-label">Recamaras:</label>
							<input type="text" name="roomRange" id="slider-range-bedrooms1-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-bedrooms1" data-min="1" data-max="10" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #recamaras -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-bathrooms1-value" class="adv-search-label">Baños:</label>
							<input type="text" name="bathRange" id="slider-range-bathrooms1-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-bathrooms1" data-min="1" data-max="4" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #baños -->
				</div>
				<!-- /.row #precio, area, recamaras, baños -->
			</form>
			</div>
			<!-- /.tabpanel #apartments -->
			<!-- .tabpanel #apartments -->
			<div role="tabpanel" class="col-xs-12 adv-search-outer tab-pane fade" id="houses">
			<form id="titleSearchHouse" class="adv-search-form" action="/search" method="GET">
				<input type="hidden" name="type" value="Casa" />
				<div class="row" style="margin-top:24px;">
					<h4>Buscar Casas</h4>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-lg-3">
					<select name="transaction" class="bootstrap-select" title="Transaccion:" multiple>
						<option>En Venta</option>
						<option>En Renta</option>
					</select>
					</div>
				</div>
				<!-- /.row #transaction -->
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-price2-value" class="adv-search-label">Precio:</label>
							<span>$</span>
							<input type="text" name="priceRange" id="slider-range-price2-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-price2" data-min="0" data-max="300000" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #precio -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-area2-value" class="adv-search-label">Area:</label>
							<span>m<sup>2</sup></span>
							<input type="text" name="areaRange" id="slider-range-area2-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-area2" data-min="0" data-max="180" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #area -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-bedrooms2-value" class="adv-search-label">Recamaras:</label>
							<input type="text" name="roomRange" id="slider-range-bedrooms2-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-bedrooms2" data-min="1" data-max="10" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #recamaras -->
					<div class="col-xs-12 col-sm-6 col-lg-3">
						<div class="adv-search-range-cont">	
							<label for="slider-range-bathrooms2-value" class="adv-search-label">Baños:</label>
							<input type="text" name="bathRange" id="slider-range-bathrooms2-value" readonly class="adv-search-amount">
							<div class="clearfix"></div>
							<div id="slider-range-bathrooms2" data-min="1" data-max="4" class="slider-range"></div>
						</div>
					</div>
					<!-- /.col #baños -->
				</div>
				<!-- /.row #precio, area, recamaras, baños -->
			</form>
			</div>
			<!-- /.tabpanel #houses -->
		</div>
		<!-- ./row tab-content -->
	</div>
	<!-- ./container -->
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-6 col-lg-3 col-md-offset-6 col-lg-offset-9 adv-search-button-cont">
				<a href="#" class="button-primary pull-right" id="title-search-submit-button">
					<span>buscar</span>
					<div class="button-triangle"></div>
					<div class="button-triangle2"></div>
					<div class="button-icon"><i class="fa fa-search"></i></div>
				</a>
			</div>
		</div>
	</div>	
</div>
</#macro>