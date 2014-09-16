<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Bienvenue sur Outdoorama.fr</title>
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Outdoorama</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><g:link controller="calendrier" action="list">Calendrier</g:link></li>
						<li><g:link controller="evenement" action="index">Evenement</g:link></li>
						<li><g:link controller="epreuve" action="index">Epreuve</g:link></li>
						<li><g:link controller="distance" action="index">Distance</g:link></li>
						<li><g:link controller="discipline" action="index">Discipline</g:link></li>
						<li><g:link controller="horaire" action="index">Horaire</g:link></li>
						<li><g:link controller="departement" action="index">Departement</g:link></li>
						<li><g:link controller="region" action="index">Region</g:link></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		
		<div class="container-fluid" role="main">
			<h1>Bienvenue sur Outdoorama.fr</h1>
			<p>Le site qui vous donne le calendrier de toutes les évenements running, trail, rando.</p>

			<div id="controller-list" role="navigation">
				<h2>Menu</h2>
				<ul>
					<li><g:link controller="calendrier" action="list">Calendrier</g:link></li>
					<li><g:link controller="evenement" action="index">Evenement</g:link></li>
					<li><g:link controller="epreuve" action="index">Epreuve</g:link></li>
					<li><g:link controller="distance" action="index">Distance</g:link></li>
					<li><g:link controller="discipline" action="index">Discipline</g:link></li>
					<li><g:link controller="horaire" action="index">Horaire</g:link></li>
					<li><g:link controller="departement" action="index">Departement</g:link></li>
					<li><g:link controller="region" action="index">Region</g:link></li>
				</ul>
			</div>
		</div>
	</body>
</html>
