<table class="table table-hover">
	<thead>
		<tr>
		
			<g:sortableColumn class="col-sm-4" property="nom" title="${message(code: 'evenement.nom.label', default: 'Evènement')}" />
		
			<g:sortableColumn class="col-sm-1" property="date" title="${message(code: 'epreuve.date.label', default: 'Date')}" />
		
			<g:sortableColumn class="col-sm-1" property="discipline" title="${message(code: 'epreuve.discipline.label', default: 'Discipline')}" />
		
			<g:sortableColumn class="col-sm-1" property="distance" title="${message(code: 'epreuve.distance.label', default: 'Distance')}" />
		
			<g:sortableColumn class="col-sm-1" property="denivele" title="${message(code: 'epreuve.denivele.label', default: 'Dénivelé')}" />
			
			<g:sortableColumn class="col-sm-1" property="tarifMin" title="${message(code: 'epreuve.tarifMinMax.label', default: 'Tarifs')}" />
		
		</tr>
	</thead>
	
	<tbody>
	<g:each in="${calendrierList}" status="i" var="calendrierInstance">
		<tr>
		
			<td>
				<span class="cal-titre">
					<g:link controller="calendrier" action="show" id="${calendrierInstance.id}">${calendrierInstance.nom}</g:link>
				</span>
				<span class="cal-options-droite">
					<g:if test="${calendrierInstance.solo}">S</g:if>
					<g:if test="${calendrierInstance.relais}">R</g:if>
					<g:if test="${calendrierInstance.equipe}">E</g:if>
				</span>
				<br />
				<span class="cal-details">
					${calendrierInstance.lieu} (${calendrierInstance.departement?.nom} - ${calendrierInstance.departement?.region.nom})
				</span>
				<span class="cal-options-droite">
					<g:if test="${calendrierInstance.pointsUTMB}">[${calendrierInstance.pointsUTMB} UTMB] </g:if>
				</span>
				<br />
				<span class="cal-options-droite">
					<g:if test="${calendrierInstance.courseFeminine}">[féminine]</g:if>
					<g:if test="${calendrierInstance.courseNocturne}">[nocturne]</g:if>
					<g:if test="${calendrierInstance.courseRecurrente}">[récurrente]</g:if>
				</span>
			</td>
			
			<td>
				<g:formatDate type="date" style="SHORT" date="${calendrierInstance.date}" />
			</td>
			
			<td>${calendrierInstance.idDisc}</td>
		
			<td>
				${calendrierInstance.idFam}<br />
				<g:if test="${calendrierInstance.distance}">${calendrierInstance.distance}</g:if>
			</td>
		
			<td><g:if test="${calendrierInstance.denivele}">${calendrierInstance.denivele} m</g:if></td>
			
			<td><g:formatNumber number="${calendrierInstance.tarifMin}" type="currency" currencyCode="EUR" /></br><g:formatNumber number="${calendrierInstance.tarifMax}" type="currency" currencyCode="EUR" /></td>
			
		</tr>
	</g:each>
	</tbody>
</table>

<g:javascript>

</g:javascript>