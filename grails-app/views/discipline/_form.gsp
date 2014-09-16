<%@ page import="outdoorama.Discipline" %>



<div class="form-group ${hasErrors(bean: disciplineInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="discipline.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="20" required="" value="${disciplineInstance?.nom}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: disciplineInstance, field: 'description', 'error')} required">
	<label for="description" class="col-sm-2 control-label">
		<g:message code="discipline.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="description" cols="40" rows="5" maxlength="2000" required="" value="${disciplineInstance?.description}"/>

	</div>
</div>

