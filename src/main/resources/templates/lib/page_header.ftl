<#macro nav>
<!-- Page header -->	
<header>
	<div class="top-bar-wrapper">
		<div class="container top-bar">
			<div class="row">
				<div class="col-xs-5 col-sm-8">
					<div class="top-mail pull-left hidden-xs">
						<span class="top-icon-circle">
							<i class="fa fa-envelope fa-sm"></i>
						</span>
						<span class="top-bar-text">gerencia@rentafacilpuebla.com</span>
					</div>
					<div class="top-phone pull-left hidden-xxs">
						<span class="top-icon-circle">
							<i class="fa fa-phone"></i>
						</span>
						<span class="top-bar-text">22-21-66-79-72</span>
					</div>
				</div>
				<div class="col-xs-7 col-sm-4">
					<div class="top-social-last top-dark pull-right">
					<#if principal??>
						<a class="top-icon-circle" href="/logout">
							<i class="fa fa-power-off"></i>
						</a>
					<#else>
						<a class="top-icon-circle" href="/admin">
							<i class="fa fa-lock"></i>
						</a>
					</#if>
					</div>
				</div>
			</div>
		</div><!-- /.top-bar -->	
	</div><!-- /.Page top-bar-wrapper -->	
	<nav class="navbar main-menu-cont">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar icon-bar1"></span>
					<span class="icon-bar icon-bar2"></span>
					<span class="icon-bar icon-bar3"></span>
				</button>
				<a href="/"title=""class="navbar-brand">
					<img src="/images/logo_rfp.png" style="height: 50px;" alt="rentafacilpuebla" />
				</a>
			</div>
			<!--  -->
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<#if principal??>
					<li>
						<a href="/admin">Inicio</a>
					</li>
					<#else>
					<li>
						<a href="/">Inicio</a>
					</li>
					</#if>
					<li class="dropdown">
						<a href="/search">listado</a>
					</li>
					<#if principal??>
					<li><a href="/admin/properties/create" class="special-color">registrar propiedad</a></li>
					<#else>
					<li class="dropdown">
						<a href="/contact">Contacto</a>
					</li>
					</#if>
				</ul>
			</div>
		</div>
	</nav><!-- /.mani-menu-cont -->	
</header>
</#macro>