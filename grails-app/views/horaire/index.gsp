
<%@ page import="outdoorama.Horaire" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'horaire.label', default: 'Horaire')}" />
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
						
							<g:sortableColumn property="nom" title="${message(code: 'horaire.nom.label', default: 'Nom')}" />
						
							<g:sortableColumn property="date" title="${message(code: 'horaire.date.label', default: 'Date')}" />
						
							<th><g:message code="horaire.epreuve.label" default="Epreuve" /></th>
						
						</tr>
					</thead>
					
					<tbody>
					<g:each in="${horaireInstanceList}" status="i" var="horaireInstance">
						<tr>
						
							<td><g:link action="show" id="${horaireInstance.id}">${fieldValue(bean: horaireInstance, field: "nom")}</g:link></td>
						
							<td><g:formatDate date="${horaireInstance.date}" /></td>
						
							<td>${fieldValue(bean: horaireInstance, field: "epreuve")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			
			<ul class="pagination">
				<g:paginate total="${horaireInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
