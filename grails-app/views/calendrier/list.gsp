
<%@ page import="outdoorama.Evenement"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evenement.label', default: 'Evenement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
		<asset:javascript src="calendrier.js" />
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
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	
		<div class="container-fluid" role="main">
			<div class="row">
				<div class="col-md-3" id="filtres">
					<h2>Filtres</h2>
					<g:form action="list" role="form">
						<fieldset>
							<div class="form-group">
								<label for="nom"><g:message code="evenement.nom.label" default="Nom Evt." /></label>
								<g:textField class="form-control" name="nom" value="${flash?.nom.encodeAsHTML()}" />
							</div>
							<div class="form-group">
								<label for="lieu"><g:message code="evenement.lieu.label" default="Lieu" /></label>
								<g:textField class="form-control" name="lieu" value="${flash?.lieu.encodeAsHTML()}" />
							</div>
							
							<label for="date"><g:message code="epreuve.date.label" default="Date" /></label>
							<div class="input-daterange input-group" id="datepicker">
								<g:textField class="input-sm form-control" name="datemin" value="${flash?.datemin.encodeAsHTML()}" />
								<span class="input-group-addon">à</span>
								<g:textField class="input-sm form-control" name="datemax" value="${flash?.datemax.encodeAsHTML()}" />
							</div>
						</fieldset>
					</g:form>
				</div>
				
				<div class="col-md-9">
					<h2>Résultats</h2>
					<div id="tableau" class="table-responsive">
						<g:render template="tableau" model="model" />
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
