
<%@ page import="outdoorama.Departement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'departement.label', default: 'Departement')}" />
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
						
							<g:sortableColumn property="numero" title="${message(code: 'departement.numero.label', default: 'Numero')}" />
						
							<g:sortableColumn property="nom" title="${message(code: 'departement.nom.label', default: 'Nom')}" />
						
							<th><g:message code="departement.region.label" default="Region" /></th>
						
						</tr>
					</thead>
					
					<tbody>
					<g:each in="${departementInstanceList}" status="i" var="departementInstance">
						<tr>
						
							<td><g:link action="show" id="${departementInstance.id}">${fieldValue(bean: departementInstance, field: "numero")}</g:link></td>
						
							<td>${fieldValue(bean: departementInstance, field: "nom")}</td>
						
							<td>${fieldValue(bean: departementInstance, field: "region")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			
			<ul class="pagination">
				<g:paginate total="${departementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
