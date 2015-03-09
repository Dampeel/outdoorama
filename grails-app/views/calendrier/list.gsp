
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
					<a class="navbar-brand" href="${createLink(uri: '/')}">Yeti-Outdoor</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="${createLink(uri: '/')}">Retour au site</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	
		<div class="container-fluid" role="main">
			<div class="row">
				<div class="col-sm-3 fixed" id="filtres">
					<g:form action="list" class="form-horizontal" role="form">
							<div class="form-group">
								<label for="texte" class="col-sm-3 control-label"><g:message code="evenement.texte.label" default="Evt." /></label>
								<div class="col-sm-9">
									<g:textField class="form-control" name="texte" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label"><g:message code="epreuve.date.label" default="Date" /></label>
								<div class="col-sm-9">
									<div class="input-daterange input-group datepicker" id="datepicker">
										<g:textField class="form-control" name="dateMin" />
										<span class="input-group-addon">à</span>
										<g:textField class="form-control" name="dateMax" />
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<label for="nom" class="col-sm-3 control-label"><g:message code="evenement.departement.label" default="Dept." /></label>
								<div class="col-sm-9">
									<g:select class="form-control" name="departement" from="${outdoorama.Departement.list()}" optionKey="id" optionValue="nom" noSelection="['': 'Tous les départements']"/>
								</div>
							</div>
							
							<div class="form-group">
								<label for="nom" class="col-sm-3 control-label"><g:message code="evenement.discipline.label" default="Disc." /></label>
								<div class="col-sm-9">
									<g:select class="form-control" name="discipline" from="${outdoorama.Discipline.list()}" optionKey="id" optionValue="id" noSelection="['': 'Toutes les disciplines']"/>
								</div>
							</div>
							
							<div class="form-group">
								<label for="nom" class="col-sm-3 control-label"><g:message code="evenement.famille.label" default="Fam." /></label>
								<div class="col-sm-9">
									<g:select class="form-control" name="famille" from="${outdoorama.Famille.list()}" optionKey="id" optionValue="id" noSelection="['': 'Toutes les familles']"/>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label"><g:message code="epreuve.denivele.label" default="Deniv." /></label>
								<div class="col-sm-9">
									<div class="input-daterange input-group">
										<g:textField class="form-control" name="deniveleMin" />
										<span class="input-group-addon">à</span>
										<g:textField class="form-control" name="deniveleMax" />
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">...</label>
								<div class="col-sm-9">
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
								
								<div class="checkbox">
									<label>
										<g:checkBox name="pointsUTMB" /> 
										<g:message code="epreuve.pointsUTMB.label" default="Points UTMB" />
									</label>
								</div>
								</div>
							</div>
							
					</g:form>
				</div>
				
				<div class="col-sm-9 scrollit">
					<div id="tableau" class="table-responsive">
						<g:render template="tableau" model="model" />
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
