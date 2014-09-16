<%@ page import="outdoorama.Evenement" %>



<div class="form-group ${hasErrors(bean: evenementInstance, field: 'nom', 'error')} required">
	<label for="nom" class="col-sm-2 control-label">
		<g:message code="evenement.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nom" maxlength="100" required="" value="${evenementInstance?.nom}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'lieu', 'error')} required">
	<label for="lieu" class="col-sm-2 control-label">
		<g:message code="evenement.lieu.label" default="Lieu" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="lieu" maxlength="100" required="" value="${evenementInstance?.lieu}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'texte', 'error')} ">
	<label for="texte" class="col-sm-2 control-label">
		<g:message code="evenement.texte.label" default="Texte" />
		
	</label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="texte" cols="40" rows="5" maxlength="3000" value="${evenementInstance?.texte}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'siteWeb', 'error')} ">
	<label for="siteWeb" class="col-sm-2 control-label">
		<g:message code="evenement.siteWeb.label" default="Site Web" />
		
	</label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="siteWeb" cols="40" rows="5" maxlength="1000" value="${evenementInstance?.siteWeb}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'programme', 'error')} ">
	<label for="programme" class="col-sm-2 control-label">
		<g:message code="evenement.programme.label" default="Programme" />
		
	</label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="programme" cols="40" rows="5" maxlength="1000" value="${evenementInstance?.programme}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'departement', 'error')} required">
	<label for="departement" class="col-sm-2 control-label">
		<g:message code="evenement.departement.label" default="Departement" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="departement" name="departement.id" from="${outdoorama.Departement.list()}" optionKey="id" required="" value="${evenementInstance?.departement?.id}" class="many-to-one"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: evenementInstance, field: 'epreuves', 'error')} ">
	<label for="epreuves" class="col-sm-2 control-label">
		<g:message code="evenement.epreuves.label" default="Epreuves" />
		
	</label>
	<div class="col-sm-10">
		
<ul class="one-to-many">
<g:each in="${evenementInstance?.epreuves?}" var="e">
    <li><g:link controller="epreuve" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="epreuve" action="create" params="['evenement.id': evenementInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'epreuve.label', default: 'Epreuve')])}</g:link>
</li>
</ul>


	</div>
</div>

