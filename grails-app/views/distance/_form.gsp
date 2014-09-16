<%@ page import="outdoorama.Distance" %>



<div class="form-group ${hasErrors(bean: distanceInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="distance.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="10" required="" value="${distanceInstance?.nom}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: distanceInstance, field: 'longueur', 'error')} required">
	<label for="longueur" class="col-sm-2 control-label">
		<g:message code="distance.longueur.label" default="Longueur" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="longueur" value="${fieldValue(bean: distanceInstance, field: 'longueur')}" required=""/>

	</div>
</div>

