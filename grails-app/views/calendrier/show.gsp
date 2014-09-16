
<%@ page import="outdoorama.Evenement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evenement.label', default: 'Evenement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
					<a class="navbar-brand" href="${createLink(uri: '/')}">Outdoorama</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="${createLink(uri: '/')}"><g:message code="default.home.label" /></a></li>
						<li><g:link class="list" controller="calendrier" action="list">Calendrier</g:link></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	
		<div class="container-fluid" role="main">
			<div class="row">
				<div class="col-md-8" id="filtres">

					<h1><g:fieldValue bean="${evenementInstance}" field="nom"/></h1>
	
					<g:if test="${evenementInstance?.lieu}">
					<li class="fieldcontain">
						<span id="lieu-label" class="property-label"><g:message code="evenement.lieu.label" default="Lieu" /></span>
						<span class="property-value" aria-labelledby="lieu-label"><g:fieldValue bean="${evenementInstance}" field="lieu"/></span>
					</li>
					</g:if>
				
					<g:if test="${evenementInstance?.texte}">
					<li class="fieldcontain">
						<span id="texte-label" class="property-label"><g:message code="evenement.texte.label" default="Texte" /></span>
						<span class="property-value" aria-labelledby="texte-label"><g:fieldValue bean="${evenementInstance}" field="texte"/></span>
					</li>
					</g:if>
				
					<g:if test="${evenementInstance?.siteWeb}">
					<li class="fieldcontain">
						<span id="siteWeb-label" class="property-label"><g:message code="evenement.siteWeb.label" default="Site Web" /></span>
						<span class="property-value" aria-labelledby="siteWeb-label"><g:fieldValue bean="${evenementInstance}" field="siteWeb"/></span>
					</li>
					</g:if>
				
					<g:if test="${evenementInstance?.programme}">
					<li class="fieldcontain">
						<span id="programme-label" class="property-label"><g:message code="evenement.programme.label" default="Programme" /></span>
						<span class="property-value" aria-labelledby="programme-label"><g:fieldValue bean="${evenementInstance}" field="programme"/></span>
					</li>
					</g:if>
				
					<g:if test="${evenementInstance?.departement}">
					<li class="fieldcontain">
						<span id="departement-label" class="property-label"><g:message code="evenement.departement.label" default="Departement" /></span>
						<span class="property-value" aria-labelledby="departement-label"><g:link controller="departement" action="show" id="${evenementInstance?.departement?.id}">${evenementInstance?.departement?.nom.encodeAsHTML()}</g:link></span>
					</li>
					</g:if>
				
					<g:if test="${evenementInstance?.epreuves}">
						<g:each in="${evenementInstance.epreuves}" status="i" var="epreuveInstance">
						
						<h2>Epreuve
							<g:if test="${epreuveInstance.nom}"><g:fieldValue bean="${epreuveInstance}" field="nom"/></g:if>
							<g:else>${i}</g:else>
						</h2>
				
						<g:if test="${epreuveInstance?.date}">
						<li class="fieldcontain">
							<span id="date-label" class="property-label"><g:message code="epreuve.date.label" default="Date" /></span>
							<span class="property-value" aria-labelledby="date-label"><g:formatDate format="dd/MM/yyyy" date="${epreuveInstance?.date}" /></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.discipline}">
						<li class="fieldcontain">
							<span id="discipline-label" class="property-label"><g:message code="epreuve.discipline.label" default="Discipline" /></span>
							<span class="property-value" aria-labelledby="discipline-label"><g:link controller="discipline" action="show" id="${epreuveInstance?.discipline?.id}">${epreuveInstance?.discipline?.nom.encodeAsHTML()}</g:link></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.distance}">
						<li class="fieldcontain">
							<span id="distance-label" class="property-label"><g:message code="epreuve.distance.label" default="Distance" /></span>
							<span class="property-value" aria-labelledby="distance-label"><g:link controller="distance" action="show" id="${epreuveInstance?.distance?.id}">${epreuveInstance?.distance?.nom.encodeAsHTML()}</g:link></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.denivele}">
						<li class="fieldcontain">
							<span id="denivele-label" class="property-label"><g:message code="epreuve.denivele.label" default="Denivele" /></span>
							<span class="property-value" aria-labelledby="denivele-label"><g:fieldValue bean="${epreuveInstance}" field="denivele"/></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.horaires}">
						<li class="fieldcontain">
							<span id="horaires-label" class="property-label"><g:message code="epreuve.horaires.label" default="Horaires" /></span>
							<g:each in="${epreuveInstance.horaires}" var="h">
								<span class="property-value" aria-labelledby="horaires-label"><g:link controller="horaire" action="show" id="${h.id}">${h?.nom.encodeAsHTML()}: ${h?.date.encodeAsHTML()}</g:link></span>
							</g:each>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.lieuDepart}">
						<li class="fieldcontain">
							<span id="lieuDepart-label" class="property-label"><g:message code="epreuve.lieuDepart.label" default="Lieu Depart" /></span>
							<span class="property-value" aria-labelledby="lieuDepart-label"><g:fieldValue bean="${epreuveInstance}" field="lieuDepart"/></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.lieuArrivee}">
						<li class="fieldcontain">
							<span id="lieuArrivee-label" class="property-label"><g:message code="epreuve.lieuArrivee.label" default="Lieu Arrivee" /></span>
							<span class="property-value" aria-labelledby="lieuArrivee-label"><g:fieldValue bean="${epreuveInstance}" field="lieuArrivee"/></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.tarifMin}">
						<li class="fieldcontain">
							<span id="tarifMin-label" class="property-label"><g:message code="epreuve.tarifMin.label" default="Tarif Min" /></span>
							<span class="property-value" aria-labelledby="tarifMin-label"><g:fieldValue bean="${epreuveInstance}" field="tarifMin"/></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.tarifMax}">
						<li class="fieldcontain">
							<span id="tarifMax-label" class="property-label"><g:message code="epreuve.tarifMax.label" default="Tarif Max" /></span>
							<span class="property-value" aria-labelledby="tarifMax-label"><g:fieldValue bean="${epreuveInstance}" field="tarifMax"/></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.equipe}">
						<li class="fieldcontain">
							<span id="equipe-label" class="property-label"><g:message code="epreuve.equipe.label" default="Equipe" /></span>
							<span class="property-value" aria-labelledby="equipe-label"><g:formatBoolean boolean="${epreuveInstance?.equipe}" /></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.relais}">
						<li class="fieldcontain">
							<span id="relais-label" class="property-label"><g:message code="epreuve.relais.label" default="Relais" /></span>
							<span class="property-value" aria-labelledby="relais-label"><g:formatBoolean boolean="${epreuveInstance?.relais}" /></span>
						</li>
						</g:if>
					
						<g:if test="${epreuveInstance?.solo}">
						<li class="fieldcontain">
							<span id="solo-label" class="property-label"><g:message code="epreuve.solo.label" default="Solo" /></span>
							<span class="property-value" aria-labelledby="solo-label"><g:formatBoolean boolean="${epreuveInstance?.solo}" /></span>
						</li>
						</g:if>
							
						</g:each>
					</g:if>
				</div>
				
				<div class="col-md-4" id="filtres">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Covoiturage</h3>
						</div>
						<div class="panel-body">
							<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          					<p><a class="btn btn-default" href="#" role="button">Détails &raquo;</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
