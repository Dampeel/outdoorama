
<%@ page import="outdoorama.Evenement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evenement.label', default: 'Evenement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${createLink(uri: '/')}">Yeti-Outdoor</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><g:link class="list" controller="calendrier" action="list">Calendrier</g:link></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	
		<div class="container-fluid" role="main">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">

					<h1><g:fieldValue bean="${evenementInstance}" field="nom"/></h1>
	
					<p>
						<g:if test="${dateMin == dateMax}">
							Le <g:formatDate type="date" style="SHORT" date="${dateMin}" />
						</g:if>
						<g:else>
							Du <g:formatDate type="date" style="SHORT" date="${dateMin}" /> au  <g:formatDate type="date" style="SHORT" date="${dateMax}" />
						</g:else>
					</p>
					
					<p>
						<g:if test="${evenementInstance?.lieu}">
							${evenementInstance?.lieu}
						</g:if>
		
						<g:if test="${evenementInstance?.lieuRdv}">
							, ${evenementInstance?.lieuRdv}
						</g:if>
		
						<g:if test="${evenementInstance?.departement}">
							- ${evenementInstance?.departement.nom} (${evenementInstance?.departement.region.nom})
						</g:if>
					</p>
					
					<g:if test="${evenementInstance?.texte}">
						<blockquote><p>
							${evenementInstance?.texte}
						</p></blockquote>
					</g:if>
					
					<g:if test="${evenementInstance?.courseEnfant}">
						<p>
							Course enfants : ${evenementInstance?.courseEnfant}
						</p>
					</g:if>
					
					<g:if test="${evenementInstance?.commentaire1}">
						<p>
							${evenementInstance?.commentaire1}
						</p>
					</g:if>
					
					<g:if test="${evenementInstance?.commentaire2}">
						<p>
							${evenementInstance?.commentaire2}
						</p>
					</g:if>
					
					<p>
						<g:if test="${evenementInstance?.urlWeb}">
							<a href="${evenementInstance?.urlWeb}">[Site web]</a>
						</g:if>
						<g:if test="${evenementInstance?.urlFacebook}">
							<a href="${evenementInstance?.urlFacebook}">[Facebook]</a>
						</g:if>
						<g:if test="${evenementInstance?.eMail}">
							<a href="mailto:${evenementInstance?.eMail}">[E-mail]</a>
						</g:if>
					</p>
				
					<g:if test="${evenementInstance?.epreuves}">
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<g:if test="${evenementInstance?.epreuves.size() > 1}">
									<h3>Détail des épreuves <small>(${evenementInstance?.epreuves.size()})</small></h3>
								</g:if>
								<g:else>
									<h3>Détail de l'épreuve</h3>
								</g:else>
							</div>
						
							<ul class="list-group">
								<g:each in="${evenementInstance.epreuves}" status="i" var="epreuveInstance">
					
								<li class="list-group-item">
									<p>
										<g:if test="${epreuveInstance?.nom}">
											${epreuveInstance?.nom},
										</g:if>
										<g:if test="${epreuveInstance?.discipline}">
											${epreuveInstance?.discipline.id}
										</g:if>
										<g:if test="${epreuveInstance?.distance}">
											// Distance : ${epreuveInstance?.famille.id} (${epreuveInstance?.distance})
										</g:if>
										<g:if test="${epreuveInstance?.denivele}">
											et ${epreuveInstance?.denivele}m D+
										</g:if>
									</p>
										
									<p>
										Départ 
										<g:if test="${epreuveInstance?.date}">
											le <g:formatDate type="date" style="SHORT" date="${epreuveInstance.date}" />
										</g:if>
										<g:if test="${epreuveInstance?.horaire}">
											(${epreuveInstance?.horaire})
										</g:if>
										<g:if test="${epreuveInstance?.lieuDepart}">
											de ${epreuveInstance?.lieuDepart}
										</g:if>
										<g:if test="${epreuveInstance?.lieuArrivee}">
											- Arrivée à ${epreuveInstance?.lieuArrivee}
										</g:if>
										<g:if test="${epreuveInstance?.tempsLimite}">
											// Temps limite : ${epreuveInstance?.tempsLimite}
										</g:if>
									</p>
										
									<p>
										Type : 
										<g:if test="${epreuveInstance?.solo}">
											Solo
										</g:if>
										<g:if test="${epreuveInstance?.relais}">
											- Relais
										</g:if>
										<g:if test="${epreuveInstance?.equipe}">
											- Equipe
										</g:if>
										<g:if test="${epreuveInstance?.infoRE}">
											, ${epreuveInstance?.infoRE}
										</g:if>
										<g:if test="${epreuveInstance?.nbPlaces}">
											, Nombre de places: ${epreuveInstance?.nbPlaces}
										</g:if>
										<g:if test="${epreuveInstance?.courseNocturne}">
											// épreuve nocturne
										</g:if>
										<g:if test="${epreuveInstance?.courseFeminine}">
											// épreuve féminine
										</g:if>
										<g:if test="${epreuveInstance?.courseRecurrente}">
											// épreuve récurrente
										</g:if>
									</p>
										
									<g:if test="${epreuveInstance?.meneurAllure}">
										<p>
											Meneur d'allure : ${epreuveInstance?.meneurAllure}
										</p>
									</g:if>
									
									<g:if test="${epreuveInstance?.tarifMin || epreuveInstance?.pointsUTMB}">	
										<p>
											<g:if test="${epreuveInstance?.tarifMin}">
												Tarifs : de ${epreuveInstance?.tarifMin} €
											</g:if> 
											<g:if test="${epreuveInstance?.tarifMax}">
												à ${epreuveInstance?.tarifMax} €
											</g:if>
											<g:if test="${epreuveInstance?.pointsUTMB}">
												// ${epreuveInstance?.pointsUTMB} points UTMB
											</g:if>
										</p>
									</g:if>
										
									<g:if test="${epreuveInstance?.challenge}">
										<p>
											${epreuveInstance?.challenge}
										</p>
									</g:if>
										
									<g:if test="${epreuveInstance?.commentaire}">
										<p>
											${epreuveInstance?.commentaire}
										</p>
									</g:if>
								</li>
								
								</g:each>
							</ul>
						</div>
					</g:if>
				</div>
			</div>
		</div>
	</body>
</html>
