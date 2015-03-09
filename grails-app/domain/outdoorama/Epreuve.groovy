package outdoorama

import java.util.Date;

class Epreuve {
	
	Date		date							// cal + filtre
	String		nom
	String		distance						// cal + filtre
	Integer		denivele						// cal + filtre
	
	String		horaire
	Boolean		solo				= true		// cal + filtre - une seule colonne
	Boolean		equipe				= false		// cal + filtre
	Boolean		relais				= false		// cal + filtre
	String		infoRE
	String		lieuDepart
	String		lieuArrivee
	String		tempsLimite
	String		nbPlaces
	Integer		tarifMin						// cal
	Integer		tarifMax						// cal
	Boolean		courseNocturne		= false		// cal + filtre
	Boolean		courseFeminine		= false		// cal + filtre
	Boolean		courseRecurrente	= false		// cal + filtre
	Integer		pointsUTMB						// cal + filtre
	String		meneurAllure
	String		challenge
	String		commentaire
	
	Evenement	evenement
	Famille		famille							// famille de distance - cal + filtre
	Discipline	discipline						// cal + filtre
	
	static belongsTo = Evenement

    static constraints = {
		nom				blank: true, nullable: true, size: 3..100
		distance		blank: true, nullable: true, size: 3..50
		denivele		nullable: true
		horaire			blank: true, nullable: true, maxSize: 100
		infoRE			blank: true, nullable: true, maxSize: 200
		lieuDepart		blank: true, nullable: true, maxSize: 200
		lieuArrivee		blank: true, nullable: true, maxSize: 200
		tempsLimite		blank: true, nullable: true, maxSize: 50
		nbPlaces		blank: true, nullable: true, maxSize: 100
		tarifMin		blank: true, nullable: true, maxSize: 50
		tarifMax		blank: true, nullable: true, maxSize: 50
		pointsUTMB		nullable: true, min: 0
		meneurAllure	blank: true, nullable: true, maxSize: 100
		challenge		blank: true, nullable: true, maxSize: 100
		commentaire		blank: true, nullable: true, maxSize: 1000
		famille			nullable: true
    }
	
	static mapping = {
		sort "nom"
	}
}
