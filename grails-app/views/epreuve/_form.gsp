<%@ page import="outdoorama.Epreuve" %>



<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'nom', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.nom.label" default="Nom" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="nom" maxlength="100" value="${epreuveInstance?.nom}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'distance', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.distance.label" default="Distance" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:field class="form-control" name="distance" value="${fieldValue(bean: epreuveInstance, field: 'distance')}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'denivele', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.denivele.label" default="Denivele" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:field class="form-control" name="denivele" type="number" value="${epreuveInstance.denivele}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'horaire', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.horaire.label" default="Horaire" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="horaire" maxlength="100" value="${epreuveInstance?.horaire}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'infoRE', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.infoRE.label" default="Info RE" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="infoRE" maxlength="200" value="${epreuveInstance?.infoRE}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'lieuDepart', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.lieuDepart.label" default="Lieu Depart" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="lieuDepart" maxlength="200" value="${epreuveInstance?.lieuDepart}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'lieuArrivee', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.lieuArrivee.label" default="Lieu Arrivee" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="lieuArrivee" maxlength="200" value="${epreuveInstance?.lieuArrivee}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'tempsLimite', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.tempsLimite.label" default="Temps Limite" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="tempsLimite" maxlength="50" value="${epreuveInstance?.tempsLimite}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'nbPlaces', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.nbPlaces.label" default="Nb Places" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="nbPlaces" maxlength="100" value="${epreuveInstance?.nbPlaces}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'tarifMin', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.tarifMin.label" default="Tarif Min" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:field class="form-control" name="tarifMin" type="number" value="${epreuveInstance.tarifMin}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'tarifMax', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.tarifMax.label" default="Tarif Max" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:field class="form-control" name="tarifMax" type="number" value="${epreuveInstance.tarifMax}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'pointsUTMB', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.pointsUTMB.label" default="Points UTMB" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:field class="form-control" name="pointsUTMB" type="number" min="0" value="${epreuveInstance.pointsUTMB}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'meneurAllure', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.meneurAllure.label" default="Meneur Allure" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="meneurAllure" maxlength="100" value="${epreuveInstance?.meneurAllure}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'challenge', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.challenge.label" default="Challenge" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control" name="challenge" maxlength="100" value="${epreuveInstance?.challenge}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'commentaire', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.commentaire.label" default="Commentaire" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:textArea class="form-control" name="commentaire" cols="40" rows="5" maxlength="1000" value="${epreuveInstance?.commentaire}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'famille', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.famille.label" default="Famille" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:select class="form-control" id="famille" name="famille.id" from="${outdoorama.Famille.list()}" optionKey="id" value="${epreuveInstance?.famille?.id}" noSelection="['null': '']"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'courseFeminine', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.courseFeminine.label" default="Course Feminine" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="courseFeminine" value="${epreuveInstance?.courseFeminine}" />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'courseNocturne', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.courseNocturne.label" default="Course Nocturne" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="courseNocturne" value="${epreuveInstance?.courseNocturne}" />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'courseRecurrente', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.courseRecurrente.label" default="Course Recurrente" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="courseRecurrente" value="${epreuveInstance?.courseRecurrente}" />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'date', 'error')} required">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</div>
	<div class="col-sm-10 form-value">
		<g:textField class="form-control datepicker" name="date" precision="day"  value="${formatDate(format:'dd/MM/yyyy',date:epreuveInstance?.date)}"  />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'discipline', 'error')} required">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.discipline.label" default="Discipline" />
		<span class="required-indicator">*</span>
	</div>
	<div class="col-sm-10 form-value">
		<g:select class="form-control" id="discipline" name="discipline.id" from="${outdoorama.Discipline.list()}" optionKey="id" required="" value="${epreuveInstance?.discipline?.id}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'equipe', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.equipe.label" default="Equipe" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="equipe" value="${epreuveInstance?.equipe}" />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'evenement', 'error')} required">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.evenement.label" default="Evenement" />
		<span class="required-indicator">*</span>
	</div>
	<div class="col-sm-10 form-value">
		<g:select class="form-control" id="evenement" name="evenement.id" from="${outdoorama.Evenement.list()}" optionKey="id" required="" value="${epreuveInstance?.evenement?.id}"/>

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'relais', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.relais.label" default="Relais" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="relais" value="${epreuveInstance?.relais}" />

	</div>
</div>

<div class="row form-row ${hasErrors(bean: epreuveInstance, field: 'solo', 'error')} ">
	<div class="col-sm-2 form-label">
		<g:message code="epreuve.solo.label" default="Solo" />
		
	</div>
	<div class="col-sm-10 form-value">
		<g:checkBox name="solo" value="${epreuveInstance?.solo}" />

	</div>
</div>

