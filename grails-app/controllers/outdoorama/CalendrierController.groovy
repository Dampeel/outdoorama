package outdoorama

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.Normalizer

import org.hibernate.criterion.CriteriaSpecification

@Transactional(readOnly = true)
class CalendrierController {

    def list() {
		
		println params
		
		/*flash.nom = params.nom
		flash.lieu = params.lieu
		flash.datemin = params.datemin
		flash.datemax = params.datemax*/
			
        if (!params.sort) params.sort = "date"
        if (!params.order) params.order = "desc"
		
		def calendrier = Evenement.createCriteria().list() {
			
			createAlias("epreuves", "ep")
			
			projections {
				property("id", "id")
				property("nom", "nom")
				property("lieu", "lieu")
				property("departement", "departement")
				
				property("ep.date", "date")
				property("ep.discipline", "discipline")
				property("ep.distance", "distance")
				property("ep.denivele", "denivele")
				property("ep.tarifMin", "tarifMin")
				property("ep.tarifMax", "tarifMax")
				property("ep.solo", "solo")
				property("ep.relais", "relais")
				property("ep.equipe", "equipe")
				property("ep.courseFeminine", "courseFeminine")
				property("ep.courseRecurrente", "courseRecurrente")
				property("ep.courseNocturne", "courseNocturne")
			}
			
			and {
				if(params.nom) {
					ilike("nom", '%' + params.nom + '%')
				}
				if(params.lieu) {
					ilike("lieu", '%' + params.lieu + '%')
				}
				if(params.datemin) {
					gte("ep.date", Date.parse("dd/MM/yyyy", params.datemin))
				}
				if(params.datemax) {
					lte("ep.date", Date.parse("dd/MM/yyyy", params.datemax))
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
			}
			
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
	
