
<%@ page import="outdoorama.Evenement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evenement.label', default: 'Evenement')}" />
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
						
							<g:sortableColumn property="nom" title="${message(code: 'evenement.nom.label', default: 'Nom')}" />
						
							<g:sortableColumn property="lieu" title="${message(code: 'evenement.lieu.label', default: 'Lieu')}" />
						
							<g:sortableColumn property="texte" title="${message(code: 'evenement.texte.label', default: 'Texte')}" />
						
							<g:sortableColumn property="siteWeb" title="${message(code: 'evenement.siteWeb.label', default: 'Site Web')}" />
						
							<g:sortableColumn property="programme" title="${message(code: 'evenement.programme.label', default: 'Programme')}" />
						
							<th><g:message code="evenement.departement.label" default="Departement" /></th>
						
						</tr>
					</thead>
					
					<tbody>
					<g:each in="${evenementInstanceList}" status="i" var="evenementInstance">
						<tr>
						
							<td><g:link action="show" id="${evenementInstance.id}">${fieldValue(bean: evenementInstance, field: "nom")}</g:link></td>
						
							<td>${fieldValue(bean: evenementInstance, field: "lieu")}</td>
						
							<td>${fieldValue(bean: evenementInstance, field: "texte")}</td>
						
							<td>${fieldValue(bean: evenementInstance, field: "siteWeb")}</td>
						
							<td>${fieldValue(bean: evenementInstance, field: "programme")}</td>
						
							<td>${fieldValue(bean: evenementInstance, field: "departement")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			
			<ul class="pagination">
				<g:paginate total="${evenementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
