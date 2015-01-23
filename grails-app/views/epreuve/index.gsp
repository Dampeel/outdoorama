
<%@ page import="outdoorama.Epreuve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'epreuve.label', default: 'Epreuve')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="container">
			<div class="row">
	   			<div class="col-sm-7">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>
				<div class="col-sm-5">
					<div class="h1-buttons">
						<g:link class="btn btn-default create" action="create"><g:message code="default.create.label" args="[entityName]" /></g:link>
					</div>
				</div>
			</div>
		
			<div class="page-content">
				<g:if test="${flash.message}">
					<div class="alert alert-info" role="status">${flash.message}</div>
				</g:if>
				
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
							
								<g:sortableColumn property="nom" title="${message(code: 'epreuve.nom.label', default: 'Nom')}" />
							
								<g:sortableColumn property="distance" title="${message(code: 'epreuve.distance.label', default: 'Distance')}" />
							
								<g:sortableColumn property="denivele" title="${message(code: 'epreuve.denivele.label', default: 'Denivele')}" />
							
								<g:sortableColumn property="horaire" title="${message(code: 'epreuve.horaire.label', default: 'Horaire')}" />
							
								<g:sortableColumn property="infoRE" title="${message(code: 'epreuve.infoRE.label', default: 'Info RE')}" />
							
								<g:sortableColumn property="lieuDepart" title="${message(code: 'epreuve.lieuDepart.label', default: 'Lieu Depart')}" />
							
							</tr>
						</thead>
						
						<tbody>
						<g:each in="${epreuveInstanceList}" status="i" var="epreuveInstance">
							<tr>
							
								<td><g:link action="show" id="${epreuveInstance.id}">${fieldValue(bean: epreuveInstance, field: "nom")}</g:link></td>
							
								<td>${fieldValue(bean: epreuveInstance, field: "distance")}</td>
							
								<td>${fieldValue(bean: epreuveInstance, field: "denivele")}</td>
							
								<td>${fieldValue(bean: epreuveInstance, field: "horaire")}</td>
							
								<td>${fieldValue(bean: epreuveInstance, field: "infoRE")}</td>
							
								<td>${fieldValue(bean: epreuveInstance, field: "lieuDepart")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
				</div>
		
				<ul class="pagination">
					<g:paginate total="${epreuveInstanceCount ?: 0}" />
				</ul>
			</div>
		</div>
	</body>
</html>
