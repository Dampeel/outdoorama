<table class="table table-hover">
	<thead>
		<tr>
		
			<g:sortableColumn class="col-sm-2" property="nom" title="${message(code: 'evenement.nom.label', default: 'Nom Evt.')}" />
		
			<g:sortableColumn class="col-sm-1" property="date" title="${message(code: 'epreuve.date.label', default: 'Date')}" />
			
			<g:sortableColumn class="col-sm-2" property="lieu" title="${message(code: 'evenement.lieu.label', default: 'Lieu')}" />
		
			<g:sortableColumn class="col-sm-1" property="discipline" title="${message(code: 'epreuve.discipline.label', default: 'Discipline')}" />
		
			<g:sortableColumn class="col-sm-1" property="distance" title="${message(code: 'epreuve.distance.label', default: 'Dist.')}" />
		
			<g:sortableColumn class="col-sm-1" property="denivele" title="${message(code: 'epreuve.denivele.label', default: 'Denivele')}" />
		
			<g:sortableColumn class="col-sm-1" property="tarifMin" title="${message(code: 'epreuve.tarifMinMax.label', default: 'Tarif Min/Max')}" />
		
			<g:sortableColumn class="col-sm-2" property="departement" title="${message(code: 'epreuve.departement.label', default: 'Departement')}" />
		
		</tr>
	</thead>
	
	<tbody>
	<g:each in="${calendrierList}" status="i" var="calendrierInstance">
		<tr>
		
			<td><g:link controller="calendrier" action="show" id="${calendrierInstance.id}">${calendrierInstance.nom}</g:link></td>
			
			<td><g:formatDate type="date" style="SHORT" date="${calendrierInstance.date}" /></td>
		
			<td>${calendrierInstance.lieu}</td>
			
			<td>${calendrierInstance.discipline?.nom}</td>
			
			<td>${calendrierInstance.distance?.nom}</td>
		
			<td><g:if test="${calendrierInstance.denivele}">${calendrierInstance.denivele} m</g:if></td>
			
			<td><g:formatNumber number="${calendrierInstance.tarifMin}" type="currency" currencyCode="EUR" /></br><g:formatNumber number="${calendrierInstance.tarifMax}" type="currency" currencyCode="EUR" /></td>
			
			<td>${calendrierInstance.departement?.nom}</br>(${calendrierInstance.departement?.region.nom})</td>

		</tr>
	</g:each>
	</tbody>
</table>

<g:javascript>

</g:javascript>