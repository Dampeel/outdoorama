<%@ page import="outdoorama.Horaire" %>



<div class="form-group ${hasErrors(bean: horaireInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="horaire.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="50" required="" value="${horaireInstance?.nom}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: horaireInstance, field: 'date', 'error')} required">
	<label for="date" class="col-sm-2 control-label">
		<g:message code="horaire.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="date" precision="day"  value="${horaireInstance?.date}"  />

	</div>
</div>

<div class="form-group ${hasErrors(bean: horaireInstance, field: 'epreuve', 'error')} required">
	<label for="epreuve" class="col-sm-2 control-label">
		<g:message code="horaire.epreuve.label" default="Epreuve" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="epreuve" name="epreuve.id" from="${outdoorama.Epreuve.list()}" optionKey="id" required="" value="${horaireInstance?.epreuve?.id}" class="many-to-one"/>

	</div>
</div>

