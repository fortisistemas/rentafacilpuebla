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
									<select name="transaction2" class="bootstrap-select" title="Tipo De Propiedadd:">
										<option>Departamento</option>
										<option>Casa</option>
										<option>Comercial</option>
										<option>Lugar</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-xs-15">
									<select name="transaction2" class="bootstrap-select" title="Tipo De Transaccion:">
										<option>En Venta</option>
										<option>En Renta</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15">
									<input name="price" type="text" class="input-full main-input" placeholder="Precio" />
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15 margin-top-xs-0">
									<input name="area" type="text" class="input-full main-input" placeholder="Area" />
								</div>
								<div class="col-xs-12 col-sm-4">
									<input name="bedrooms" type="number" class="input-full main-input" placeholder="Rec" />
								</div>
								<div class="col-xs-12 col-sm-4">
									<input name="parking" type="number" class="input-full main-input" placeholder="Baños" />
								</div>
							<div class="col-xs-12 col-sm-4">
									<input name="parking" type="number" class="input-full main-input" placeholder="Est" />
								</div>
								</div>
							<textarea name="message" class="input-full main-input property-textarea" placeholder="Descripcion"></textarea>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="c1" name="cc" class="main-checkbox" />
									<label for="c1"><span></span>Aire Acondicionado</label><br/>
									<input type="checkbox" id="c2" name="cc" class="main-checkbox" />
									<label for="c2"><span></span>Internet</label><br/>
									<input type="checkbox" id="c3" name="cc" class="main-checkbox" />
									<label for="c3"><span></span>Cable TV</label><br/>
									<input type="checkbox" id="c4" name="cc" class="main-checkbox" />
									<label for="c4"><span></span>Balcon</label><br/>
									<input type="checkbox" id="c5" name="cc" class="main-checkbox" />
									<label for="c5"><span></span>Azotea</label><br/>
									<input type="checkbox" id="c6" name="cc" class="main-checkbox" />
									<label for="c6"><span></span>Terrassa</label>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="c7" name="cc" class="main-checkbox" />
									<label for="c7"><span></span>Elevador</label><br/>
									<input type="checkbox" id="c8" name="cc" class="main-checkbox" />
									<label for="c8"><span></span>Garaje</label><br/>
									<input type="checkbox" id="c9" name="cc" class="main-checkbox" />
									<label for="c9"><span></span>Seguridad</label><br/>
									<input type="checkbox" id="c10" name="cc" class="main-checkbox" />
									<label for="c10"><span></span>Alto Nivel</label><br/>
									<input type="checkbox" id="c11" name="cc" class="main-checkbox" />
									<label for="c11"><span></span>Centrico</label><br/>
									<input type="checkbox" id="c12" name="cc" class="main-checkbox" />
									<label for="c12"><span></span>Con Muebles</label>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-6 col-lg-4 margin-top-15">
									<input type="checkbox" id="c13" name="cc" class="main-checkbox" />
									<label for="c13"><span></span>Con Alberca</label><br/>
									<!--<input type="checkbox" id="c14" name="cc" class="main-checkbox" />
									<label for="c14"><span></span>Another Option</label><br/>
									<input type="checkbox" id="c15" name="cc" class="main-checkbox" />
									<label for="c15"><span></span>Another Option</label><br/>
									<input type="checkbox" id="c16" name="cc" class="main-checkbox" />
									<label for="c16"><span></span>Another Option</label><br/>
									<input type="checkbox" id="c17" name="cc" class="main-checkbox" />
									<label for="c17"><span></span>Another Option</label><br/>
									<input type="checkbox" id="c18" name="cc" class="main-checkbox" />
									<label for="c18"><span></span>Another Option</label>-->
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
									<input name="lng" type="text" class="input-full main-input input-last" placeholder="Longitud" readonly="readonly" />
								</div>
								<div class="col-xs-12 col-sm-6 margin-top-15">
									<input name="lat" type="text" class="input-full main-input input-last" placeholder="Latitud" readonly="readonly" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 margin-top-60">
						<h3 class="title-negative-margin">gallery<span class="special-color">.</span></h3>
						<div class="title-separator-primary"></div>
					</div>
					<div class="col-xs-12 margin-top-60">
						<input id="prop-images" name="prop-images[]" type="file" multiple>
					</div>
					<div class="col-xs-12">
						<div class="center-button-cont margin-top-60">
							<a id="customSubmitButton" href="#" class="button-primary button-shadow">
								<span>submit property</span>
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