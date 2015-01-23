package outdoorama

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.Normalizer

import org.hibernate.criterion.CriteriaSpecification

@Transactional(readOnly = true)
class CalendrierController {

    def list() {
		
		println params
		
		flash.nom = params.nom
		flash.lieu = params.lieu
		flash.datemin = params.datemin
		flash.datemax = params.datemax
			
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
			}
			
			and {
				if(flash.nom) {
					ilike("nom", '%' + flash.nom + '%')
				}
				if(flash.lieu) {
					ilike("lieu", '%' + flash.lieu + '%')
				}
				if(flash.datemin) {
					gt("ep.date", Date.parse("dd/MM/yyyy", flash.datemin))
				}
				if(flash.datemax) {
					lt("ep.date", Date.parse("dd/MM/yyyy", flash.datemax))
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
	
