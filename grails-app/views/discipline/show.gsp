
<%@ page import="outdoorama.Discipline" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'discipline.label', default: 'Discipline')}" />
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
			
				<g:if test="${disciplineInstance?.nom}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="discipline.nom.label" default="Nom" />
					</span>
					
						<g:fieldValue bean="${disciplineInstance}" field="nom"/>
					
				</li>
				</g:if>
			
				<g:if test="${disciplineInstance?.description}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="discipline.description.label" default="Description" />
					</span>
					
						<g:fieldValue bean="${disciplineInstance}" field="description"/>
					
				</li>
				</g:if>
			
			</ol>
			
			<g:form class="form-horizontal" url="[resource:disciplineInstance, action:'delete']" method="DELETE">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:link class="btn btn-default edit" action="edit" resource="${disciplineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit  class="btn btn-default delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
