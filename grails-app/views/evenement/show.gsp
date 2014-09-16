
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
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
						<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		
		<div class="container-fluid" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<ol class="list-group">
			
				<g:if test="${evenementInstance?.nom}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.nom.label" default="Nom" />
					</span>
					
						<g:fieldValue bean="${evenementInstance}" field="nom"/>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.lieu}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.lieu.label" default="Lieu" />
					</span>
					
						<g:fieldValue bean="${evenementInstance}" field="lieu"/>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.texte}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.texte.label" default="Texte" />
					</span>
					
						<g:fieldValue bean="${evenementInstance}" field="texte"/>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.siteWeb}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.siteWeb.label" default="Site Web" />
					</span>
					
						<g:fieldValue bean="${evenementInstance}" field="siteWeb"/>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.programme}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.programme.label" default="Programme" />
					</span>
					
						<g:fieldValue bean="${evenementInstance}" field="programme"/>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.departement}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.departement.label" default="Departement" />
					</span>
					
						<g:link controller="departement" action="show" id="${evenementInstance?.departement?.id}">${evenementInstance?.departement?.encodeAsHTML()}</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${evenementInstance?.epreuves}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="evenement.epreuves.label" default="Epreuves" />
					</span>
					
						<g:each in="${evenementInstance.epreuves}" var="e">
						<g:link controller="epreuve" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			
			<g:form class="form-horizontal" url="[resource:evenementInstance, action:'delete']" method="DELETE">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:link class="btn btn-default edit" action="edit" resource="${evenementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit  class="btn btn-default delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
