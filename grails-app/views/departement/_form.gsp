<%@ page import="outdoorama.Departement" %>



<div class="form-group ${hasErrors(bean: departementInstance, field: 'numero', 'error')} required">
	<label for="numero" class="col-sm-2 control-label">
		<g:message code="departement.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="numero" from="${1..100}" required="" value="${fieldValue(bean: departementInstance, field: 'numero')}"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: departementInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="departement.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nom" maxlength="100" required="" value="${departementInstance?.nom}"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: departementInstance, field: 'region', 'error')} required">
	<label for="region" class="col-sm-2 control-label">
		<g:message code="departement.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="region" name="region.id" from="${outdoorama.Region.list()}" optionKey="id" required="" value="${departementInstance?.region?.id}"/>
	</div>
</div>

