package outdoorama

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.Normalizer

import org.hibernate.criterion.CriteriaSpecification

@Transactional(readOnly = true)
class CalendrierController {

    def list() {
		
		println params
		
		def calendrier = Evenement.createCriteria().list() {
			
			createAlias("epreuves", "ep")
			createAlias("departement", "dpt")
			
			projections {
				property("id", "id")
				property("nom", "nom")
				property("lieu", "lieu")
				property("departement", "departement")
				
				property("ep.date", "date")
				property("ep.tarifMin", "tarifMin")
				property("ep.tarifMax", "tarifMax")
				property("ep.discipline", "discipline")
				property("ep.distance", "distance")
				property("ep.denivele", "denivele")
				property("ep.courseFeminine", "courseFeminine")
				property("ep.courseRecurrente", "courseRecurrente")
				property("ep.courseNocturne", "courseNocturne")
				property("ep.solo", "solo")
				property("ep.relais", "relais")
				property("ep.equipe", "equipe")
				property("ep.pointsUTMB", "pointsUTMB")
				property("ep.famille.id", "idFam")
				property("ep.discipline.id", "idDisc")
				
				property("dpt.id", "idDept")
			}
			
			and {
				or {
					if(params.texte) {
						ilike("nom", '%' + params.texte + '%')
						ilike("lieu", '%' + params.texte + '%')
					}
				}
				if(params.departement) {
					eq("dpt.id", params.departement)
				}
				if(params.famille) {
					eq("ep.famille.id", params.famille)
				}
				if(params.discipline) {
					eq("ep.discipline.id", params.discipline)
				}
				if(params.dateMin) {
					gte("ep.date", Date.parse("dd/MM/yyyy", params.dateMin))
				}
				if(params.dateMax) {
					lte("ep.date", Date.parse("dd/MM/yyyy", params.dateMax))
				}
				if(params.distanceMin) {
					gte("ep.distance", params.distanceMin.toBigDecimal())
				}
				if(params.distanceMax) {
					lte("ep.distance", params.distanceMax.toBigDecimal())
				}
				if(params.deniveleMin) {
					gte("ep.denivele", params.deniveleMin.toInteger())
				}
				if(params.deniveleMax) {
					lte("ep.denivele", params.deniveleMax.toInteger())
				}
				if(params.courseFeminine) {
					eq("ep.courseFeminine", true)
				}
				if(params.courseRecurrente) {
					eq("ep.courseRecurrente", true)
				}
				if(params.courseNocturne) {
					eq("ep.courseNocturne", true)
				}
				if(params.solo) {
					eq("ep.solo", true)
				}
				if(params.relais) {
					eq("ep.relais", true)
				}
				if(params.equipe) {
					eq("ep.equipe", true)
				}
				if(params.pointsUTMB) {
					gt("ep.pointsUTMB", 0)
				}
			}
			
			if (!params.sort) params.sort = "date"
			if (!params.order) params.order = "desc"
			order(params.sort, params.order)
			
			resultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP)
		}
		
		if (request.xhr) {
			render(template: "tableau", model: [calendrierList: calendrier])
		}
		else {
			model: [calendrierList: calendrier]
		}
    }

    def show(Evenement evenementInstance) {
        respond evenementInstance
    }
}
	
