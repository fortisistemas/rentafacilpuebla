<#import "/spring.ftl" as spring />
<#import "../lib/head.ftl" as head />
<#import "../lib/page_header.ftl" as ph />
<#import "../lib/footer.ftl" as footer />
<#import "../lib/end-scripts.ftl" as endscripts />
<!DOCTYPE html>
<html lang="en">
<head>
	<@head.nav pageTitle="Renta Facil Puebla - Registro de propiedad" />
</head>
<body>
<div class="loader-bg"></div>
<div id="wrapper">

<@ph.nav />
	
  	
    <section class="short-image no-padding blog-short-title">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-12 short-image-title">
					<h5 class="subtitle-margin second-color">Registro De Propiedad</h5>
					<h1 class="second-color">Nueva Propiedad</h1>
					<div class="short-title-separator"></div>
				</div>
			</div>
		</div>
    </section>
	
	<section class="section-light section-top-shadow">
		<form id="realstatePropertyForm" name="realstatePropertyForm" action="/admin/properties/create" enctype="multipart/form-data" method="POST">
			<input type="hidden" name="imageCsv" id="imageCsv" />
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-md-6">
						<h3 class="title-negative-margin">Lista De Detalles<span class="special-color">.</span></h3>
						<div class="title-separator-primary"></div>
						<div class="dark-col margin-top-60">
							<div class="row">
								<div class="col-xs-12 col-sm-6">
									<select name="type" class="bootstrap-select" title="Tipo de Propiedad:">
										<option>Departamento</option>
										<option>Casa</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-xs-15">
									<select name="transaction" class="bootstrap-select" title="Transacción:">
										<option>En Venta</option>
										<option>En Renta</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15">
									<input name="price" required type="number" class="input-full main-input" placeholder="Precio" />
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15 margin-top-xs-0">
									<input name="area" type="number" min="0" step="1" pattern="\d*" max="600" class="input-full main-input" placeholder="Área Construida" />
								</div>
								<div class="col-xs-12 col-sm-4">
									<input name="bedrooms" type="number" min="0" step="1" pattern="\d*" max="10" class="input-full main-input" placeholder="Rec" />
								</div>
								<div class="col-xs-12 col-sm-4">
									<input name="bathrooms" type="number" min="0" max="10" class="input-full main-input" placeholder="Baños" />
								</div>
								<div class="col-xs-12 col-sm-4">
									<input name="garageSize" type="number" min="0" max="10" pattern="\d*" class="input-full main-input" placeholder="Esta" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-12">
									<input name="street" type="text" class="input-full main-input" placeholder="Calle y número" />
								</div>
								<div class="col-xs-12 col-sm-12">
									<input name="neighborghood" type="text" class="input-full main-input" placeholder="Colonia" />
								</div>
								<div class="col-xs-12 col-sm-12">
									<input required name="cityStateZip" type="text" class="input-full main-input" placeholder="Ciudad, Estado y C.P." />
								</div>
							</div>
							<textarea name="description" class="input-full main-input property-textarea" placeholder="Descripcion"></textarea>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="internet" name="internet" class="main-checkbox" />
									<label for="internet"><span></span>Internet</label><br/>
									<input type="checkbox" id="cableTv" name="cableTv" class="main-checkbox" />
									<label for="cableTv"><span></span>Cable TV</label><br/>
									<input type="checkbox" id="balcony" name="balcony" class="main-checkbox" />
									<label for="balcony"><span></span>Balcón</label><br/>
									<input type="checkbox" id="roofTerrace" name="roofTerrace" class="main-checkbox" />
									<label for="roofTerrace"><span></span>Azotea</label><br/>
									<input type="checkbox" id="terrace" name="terrace" class="main-checkbox" />
									<label for="terrace"><span></span>Terraza</label>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="lift" name="lift" class="main-checkbox" />
									<label for="lift"><span></span>Elevador</label><br/>
									<input type="checkbox" id="garage" name="garage" class="main-checkbox" />
									<label for="garage"><span></span>Garage</label><br/>
									<input type="checkbox" id="security" name="security" class="main-checkbox" />
									<label for="security"><span></span>Seguridad</label><br/>
									<input type="checkbox" id="cityCentre" name="cityCentre" class="main-checkbox" />
									<label for="cityCentre"><span></span>Céntrico</label><br/>
									<input type="checkbox" id="furniture" name="furniture" class="main-checkbox" />
									<label for="furniture"><span></span>Amueblado</label>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="swimmingPool" name="swimmingPool" class="main-checkbox" />
									<label for="swimmingPool"><span></span>Con Alberca</label><br/>
									<input type="checkbox" id="patio" name="patio" class="main-checkbox" />
									<label for="patio"><span></span>Patio</label><br/>
									<input type="checkbox" id="kitchen" name="kitchen" class="main-checkbox" />
									<label for="kitchen"><span></span>Cocina</label><br/>
									<input type="checkbox" id="cluster" name="cluster" class="main-checkbox" />
									<label for="cluster"><span></span>Cerrado</label><br/>
									<input type="checkbox" id="eco" name="eco" class="main-checkbox" />
									<label for="eco"><span></span>Ecotecnologias</label><br/>
									<input type="checkbox" id="highlight" name="highlight" class="main-checkbox" />
									<label for="highlight"><span></span>DESTACADO!</label><br/>
								</div>
							</div>
						</div>				
					</div>
					<div class="col-xs-12 col-md-6 margin-top-xs-60 margin-top-sm-60">
						<h3 class="title-negative-margin">Localizacion<span class="special-color">.</span></h3>
						<div class="title-separator-primary"></div>
						<div class="dark-col margin-top-60">
							<input id="geocomplete" name="geocomplete" type="text" class="input-full main-input" placeholder="Localizacion" />
							<p class="negative-margin bold-indent">O Arrastra El Marcador a La Posicion<p>
							<div id="submit-property-map" class="submit-property-map"></div>
							<div class="row">
								<div class="col-xs-12 col-sm-6 margin-top-15">
									<input id="lng" name="lng" required type="text" class="input-full main-input input-last" placeholder="Longitud" readonly="readonly" />
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15">
									<input id="lat" name="lat" required type="text" class="input-full main-input input-last" placeholder="Latitud" readonly="readonly" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 margin-top-60">
						<h3 class="title-negative-margin">Fotografías<span class="special-color">.</span></h3>
						<div class="title-separator-primary"></div>
					</div>
					<div class="col-xs-12 margin-top-60">
						<input id="prop-images" name="prop-images[]" type="file" multiple>
					</div>
					<div class="col-xs-12">
						<div class="center-button-cont margin-top-60">
							<a id="customSubmitButton" href="#" class="button-primary button-shadow">
								<span>registrar propiedad</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-lg fa-home"></i></div>
							</a>
						</div>
					</div>
					<input type="submit" style="display:none;" />
				</div>
			</div>
		</form>
	</section>

    <@footer.nav />
</div>	

	<@endscripts.nav />
	<script type="text/javascript" src="/js/submit-property.js"></script>
</body>
</html>