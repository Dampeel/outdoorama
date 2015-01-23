
<%@ page import="outdoorama.Epreuve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'epreuve.label', default: 'Epreuve')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="container">
			<div class="row">
	   			<div class="col-sm-7">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>
				<div class="col-sm-5">
					<div class="h1-buttons">
						<g:form url="[resource:epreuveInstance, action:'delete']" method="DELETE">
							<g:link class="btn btn-default list" action="index"><g:message code="default.button.list.label" /></g:link>
							<g:link class="btn btn-default edit" action="edit" resource="${epreuveInstance}"><g:message code="default.button.edit.label" /></g:link>
							<g:actionSubmit  class="btn btn-default delete" action="delete" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</g:form>
					</div>
				</div>
			</div>
		
			<div class="page-content">
				<g:if test="${flash.message}">
					<div class="alert alert-info" role="status">${flash.message}</div>
				</g:if>
				
				
					<g:if test="${epreuveInstance?.nom}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.nom.label" default="Nom" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="nom"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.distance}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.distance.label" default="Distance" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="distance"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.denivele}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.denivele.label" default="Denivele" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="denivele"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.horaire}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.horaire.label" default="Horaire" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="horaire"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.infoRE}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.infoRE.label" default="Info RE" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="infoRE"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.lieuDepart}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.lieuDepart.label" default="Lieu Depart" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="lieuDepart"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.lieuArrivee}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.lieuArrivee.label" default="Lieu Arrivee" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="lieuArrivee"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.tempsLimite}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.tempsLimite.label" default="Temps Limite" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="tempsLimite"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.nbPlaces}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.nbPlaces.label" default="Nb Places" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="nbPlaces"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.tarifMin}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.tarifMin.label" default="Tarif Min" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="tarifMin"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.tarifMax}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.tarifMax.label" default="Tarif Max" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="tarifMax"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.pointsUTMB}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.pointsUTMB.label" default="Points UTMB" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="pointsUTMB"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.meneurAllure}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.meneurAllure.label" default="Meneur Allure" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="meneurAllure"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.challenge}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.challenge.label" default="Challenge" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="challenge"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.commentaire}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.commentaire.label" default="Commentaire" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:fieldValue bean="${epreuveInstance}" field="commentaire"/>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.famille}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.famille.label" default="Famille" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:link controller="famille" action="show" id="${epreuveInstance?.famille?.id}">${epreuveInstance?.famille?.encodeAsHTML()}</g:link>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.courseFeminine}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.courseFeminine.label" default="Course Feminine" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.courseFeminine}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.courseNocturne}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.courseNocturne.label" default="Course Nocturne" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.courseNocturne}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.courseRecurrente}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.courseRecurrente.label" default="Course Recurrente" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.courseRecurrente}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.date}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.date.label" default="Date" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatDate date="${epreuveInstance?.date}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.discipline}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.discipline.label" default="Discipline" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:link controller="discipline" action="show" id="${epreuveInstance?.discipline?.id}">${epreuveInstance?.discipline?.encodeAsHTML()}</g:link>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.equipe}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.equipe.label" default="Equipe" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.equipe}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.evenement}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.evenement.label" default="Evenement" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:link controller="evenement" action="show" id="${epreuveInstance?.evenement?.id}">${epreuveInstance?.evenement?.encodeAsHTML()}</g:link>
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.relais}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.relais.label" default="Relais" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.relais}" />
						
						</div>
					</div>
					</g:if>
				
					<g:if test="${epreuveInstance?.solo}">
					<div class="row show-row">
	    				<div class="show-label col-sm-2">
							<g:message code="epreuve.solo.label" default="Solo" />
						</div>
						<div class="show-value col-sm-10">
						
							<g:formatBoolean boolean="${epreuveInstance?.solo}" />
						
						</div>
					</div>
					</g:if>
				
			</div>
		</div>
	</body>
</html>
