<%@ page import="outdoorama.Epreuve" %>



<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'nom', 'error')} ">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="epreuve.nom.label" default="Nom" />
		
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="100" value="${epreuveInstance?.nom}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'denivele', 'error')} ">
	<label for="denivele" class="col-sm-2 control-label">
		<g:message code="epreuve.denivele.label" default="Denivele" />
		
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="denivele" type="number" min="0" value="${epreuveInstance.denivele}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'horaires', 'error')} ">
	<label for="horaires" class="col-sm-2 control-label">
		<g:message code="epreuve.horaires.label" default="Horaires" />
		
	</label>
	<div class="col-sm-10">
		
<ul class="one-to-many">
<g:each in="${epreuveInstance?.horaires?}" var="h">
    <li><g:link controller="horaire" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="horaire" action="create" params="['epreuve.id': epreuveInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'horaire.label', default: 'Horaire')])}</g:link>
</li>
</ul>


	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'lieuDepart', 'error')} ">
	<label for="lieuDepart" class="col-sm-2 control-label">
		<g:message code="epreuve.lieuDepart.label" default="Lieu Depart" />
		
	</label>
	<div class="col-sm-10">
		<g:textField name="lieuDepart" maxlength="200" value="${epreuveInstance?.lieuDepart}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'lieuArrivee', 'error')} ">
	<label for="lieuArrivee" class="col-sm-2 control-label">
		<g:message code="epreuve.lieuArrivee.label" default="Lieu Arrivee" />
		
	</label>
	<div class="col-sm-10">
		<g:textField name="lieuArrivee" maxlength="200" value="${epreuveInstance?.lieuArrivee}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'tarifMin', 'error')} ">
	<label for="tarifMin" class="col-sm-2 control-label">
		<g:message code="epreuve.tarifMin.label" default="Tarif Min" />
		
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="tarifMin" value="${fieldValue(bean: epreuveInstance, field: 'tarifMin')}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'tarifMax', 'error')} ">
	<label for="tarifMax" class="col-sm-2 control-label">
		<g:message code="epreuve.tarifMax.label" default="Tarif Max" />
		
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="tarifMax" value="${fieldValue(bean: epreuveInstance, field: 'tarifMax')}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'date', 'error')} required">
	<label for="date" class="col-sm-2 control-label">
		<g:message code="epreuve.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="date" precision="day"  value="${epreuveInstance?.date}"  />

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'discipline', 'error')} required">
	<label for="discipline" class="col-sm-2 control-label">
		<g:message code="epreuve.discipline.label" default="Discipline" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="discipline" name="discipline.id" from="${outdoorama.Discipline.list()}" optionKey="id" required="" value="${epreuveInstance?.discipline?.id}" class="many-to-one"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'distance', 'error')} required">
	<label for="distance" class="col-sm-2 control-label">
		<g:message code="epreuve.distance.label" default="Distance" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="distance" name="distance.id" from="${outdoorama.Distance.list()}" optionKey="id" required="" value="${epreuveInstance?.distance?.id}" class="many-to-one"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'equipe', 'error')} ">
	<label for="equipe" class="col-sm-2 control-label">
		<g:message code="epreuve.equipe.label" default="Equipe" />
		
	</label>
	<div class="col-sm-10">
		<g:checkBox name="equipe" value="${epreuveInstance?.equipe}" />

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'evenement', 'error')} required">
	<label for="evenement" class="col-sm-2 control-label">
		<g:message code="epreuve.evenement.label" default="Evenement" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="evenement" name="evenement.id" from="${outdoorama.Evenement.list()}" optionKey="id" required="" value="${epreuveInstance?.evenement?.id}" class="many-to-one"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'relais', 'error')} ">
	<label for="relais" class="col-sm-2 control-label">
		<g:message code="epreuve.relais.label" default="Relais" />
		
	</label>
	<div class="col-sm-10">
		<g:checkBox name="relais" value="${epreuveInstance?.relais}" />

	</div>
</div>

<div class="form-group ${hasErrors(bean: epreuveInstance, field: 'solo', 'error')} ">
	<label for="solo" class="col-sm-2 control-label">
		<g:message code="epreuve.solo.label" default="Solo" />
		
	</label>
	<div class="col-sm-10">
		<g:checkBox name="solo" value="${epreuveInstance?.solo}" />

	</div>
</div>

