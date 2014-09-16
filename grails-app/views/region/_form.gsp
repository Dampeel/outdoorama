<%@ page import="outdoorama.Region" %>



<div class="form-group ${hasErrors(bean: regionInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="region.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="100" required="" value="${regionInstance?.nom}"/>

	</div>
</div>

