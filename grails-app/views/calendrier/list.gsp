
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
					<g:form action="list" role="form">
							<div class="form-group">
								<label for="nom"><g:message code="evenement.nom.label" default="Nom Evt." /></label>
								<g:textField class="form-control" name="nom" />
							</div>
							
							<div class="form-group">
								<label for="lieu"><g:message code="evenement.lieu.label" default="Lieu" /></label>
								<g:textField class="form-control" name="lieu" />
							</div>
							
							<div class="form-group">
								<label><g:message code="epreuve.date.label" default="Date" /></label>
								<div class="input-daterange input-group datepicker" id="datepicker">
									<g:textField class="form-control" name="dateMin" />
									<span class="input-group-addon">à</span>
									<g:textField class="form-control" name="dateMax" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="nom"><g:message code="evenement.departement.label" default="Departement" /></label>
								<g:select class="form-control" name="departement" from="${outdoorama.Departement.list()}" optionKey="id" optionValue="code" noSelection="['': 'Tous les départements']"/>
							</div>
							
							<div class="form-group">
								<label><g:message code="epreuve.tarif.label" default="Tarif" /></label>
								<div class="input-daterange input-group">
									<g:textField class="form-control" name="tarifMin" />
									<span class="input-group-addon">à</span>
									<g:textField class="form-control" name="tarifMax" />
								</div>
							</div>
							
							<div class="form-group">
								<label>Options</label>
								<div class="checkbox">
									<label>
										<g:checkBox name="courseFeminine" /> 
										<g:message code="epreuve.courseFeminine.label" default="Course Féminine" />
									</label>
								</div>
								
								<div class="checkbox">
									<label>
										<g:checkBox name="courseNocturne" /> 
										<g:message code="epreuve.courseFeminine.label" default="Course Nocturne" />
									</label>
								</div>
								
								<div class="checkbox">
									<label>
										<g:checkBox name="courseRecurrente" /> 
										<g:message code="epreuve.courseFeminine.label" default="Course Récurrente" />
									</label>
								</div>

								<label class="checkbox-inline">
										<g:checkBox name="solo" /> 
										<g:message code="epreuve.solo.label" default="Solo" />
								</label>
								<label class="checkbox-inline">
										<g:checkBox name="relais" /> 
										<g:message code="epreuve.relais.label" default="Relais" />
								</label>
								<label class="checkbox-inline">
										<g:checkBox name="equipe" /> 
										<g:message code="epreuve.equipe.label" default="Equipe" />
								</label>
							</div>
							
					</g:form>
				</div>
				
				<div class="col-md-9">
					<div id="tableau" class="table-responsive">
						<g:render template="tableau" model="model" />
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
