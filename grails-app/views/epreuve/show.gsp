
<%@ page import="outdoorama.Epreuve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'epreuve.label', default: 'Epreuve')}" />
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
			
				<g:if test="${epreuveInstance?.nom}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.nom.label" default="Nom" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="nom"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.denivele}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.denivele.label" default="Denivele" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="denivele"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.horaires}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.horaires.label" default="Horaires" />
					</span>
					
						<g:each in="${epreuveInstance.horaires}" var="h">
						<g:link controller="horaire" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.lieuDepart}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.lieuDepart.label" default="Lieu Depart" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="lieuDepart"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.lieuArrivee}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.lieuArrivee.label" default="Lieu Arrivee" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="lieuArrivee"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.tarifMin}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.tarifMin.label" default="Tarif Min" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="tarifMin"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.tarifMax}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.tarifMax.label" default="Tarif Max" />
					</span>
					
						<g:fieldValue bean="${epreuveInstance}" field="tarifMax"/>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.date}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.date.label" default="Date" />
					</span>
					
						<g:formatDate date="${epreuveInstance?.date}" />
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.discipline}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.discipline.label" default="Discipline" />
					</span>
					
						<g:link controller="discipline" action="show" id="${epreuveInstance?.discipline?.id}">${epreuveInstance?.discipline?.encodeAsHTML()}</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.distance}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.distance.label" default="Distance" />
					</span>
					
						<g:link controller="distance" action="show" id="${epreuveInstance?.distance?.id}">${epreuveInstance?.distance?.encodeAsHTML()}</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.equipe}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.equipe.label" default="Equipe" />
					</span>
					
						<g:formatBoolean boolean="${epreuveInstance?.equipe}" />
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.evenement}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.evenement.label" default="Evenement" />
					</span>
					
						<g:link controller="evenement" action="show" id="${epreuveInstance?.evenement?.id}">${epreuveInstance?.evenement?.encodeAsHTML()}</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.relais}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.relais.label" default="Relais" />
					</span>
					
						<g:formatBoolean boolean="${epreuveInstance?.relais}" />
					
				</li>
				</g:if>
			
				<g:if test="${epreuveInstance?.solo}">
				<li class="list-group-item">
    				<span class="badge">
						<g:message code="epreuve.solo.label" default="Solo" />
					</span>
					
						<g:formatBoolean boolean="${epreuveInstance?.solo}" />
					
				</li>
				</g:if>
			
			</ol>
			
			<g:form class="form-horizontal" url="[resource:epreuveInstance, action:'delete']" method="DELETE">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:link class="btn btn-default edit" action="edit" resource="${epreuveInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit  class="btn btn-default delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
