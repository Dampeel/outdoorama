
<%@ page import="outdoorama.Epreuve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'epreuve.label', default: 'Epreuve')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		
		<div class="container-fluid" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
						
							<g:sortableColumn property="nom" title="${message(code: 'epreuve.nom.label', default: 'Nom')}" />
						
							<g:sortableColumn property="denivele" title="${message(code: 'epreuve.denivele.label', default: 'Denivele')}" />
						
							<g:sortableColumn property="lieuDepart" title="${message(code: 'epreuve.lieuDepart.label', default: 'Lieu Depart')}" />
						
							<g:sortableColumn property="lieuArrivee" title="${message(code: 'epreuve.lieuArrivee.label', default: 'Lieu Arrivee')}" />
						
							<g:sortableColumn property="tarifMin" title="${message(code: 'epreuve.tarifMin.label', default: 'Tarif Min')}" />
						
							<g:sortableColumn property="tarifMax" title="${message(code: 'epreuve.tarifMax.label', default: 'Tarif Max')}" />
						
						</tr>
					</thead>
					
					<tbody>
					<g:each in="${epreuveInstanceList}" status="i" var="epreuveInstance">
						<tr>
						
							<td><g:link action="show" id="${epreuveInstance.id}">${fieldValue(bean: epreuveInstance, field: "nom")}</g:link></td>
						
							<td>${fieldValue(bean: epreuveInstance, field: "denivele")}</td>
						
							<td>${fieldValue(bean: epreuveInstance, field: "lieuDepart")}</td>
						
							<td>${fieldValue(bean: epreuveInstance, field: "lieuArrivee")}</td>
						
							<td>${fieldValue(bean: epreuveInstance, field: "tarifMin")}</td>
						
							<td>${fieldValue(bean: epreuveInstance, field: "tarifMax")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			
			<ul class="pagination">
				<g:paginate total="${epreuveInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
