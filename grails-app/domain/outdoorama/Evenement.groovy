package outdoorama

class Evenement {
	
	String 	id						
	String	nom						// cal + filtre
	Integer	premium 	= 0			// 0 par défaut et 1 pour les étoiles
	Integer	edition
	String	lieu					// cal + filtre
	String	texte
	String	lieuRdv
	
	String	urlWeb
	String	urlFacebook
	String	eMail
	String	programme				// lien vers le programme d'entrainement
	String	courseEnfant
	String	commentaire1
	String	commentaire2
	
	Departement	departement			// cal + filtre - plus région
	
	static hasMany = [epreuves: Epreuve]
	
	static mapping = {
		id				generator: 'assigned'
	}

    static constraints = {
		id				blank: false, size: 3..100, unique: true
		nom				blank: false, size: 3..100
		edition			nullable: true, min: 0
		lieu			blank: false, size: 3..100
		texte			blank: true, nullable: true, maxSize: 3000
		lieuRdv			blank: true, nullable: true, maxSize: 200
		urlWeb			blank: true, nullable: true, maxSize: 1000, url: true
		urlFacebook		blank: true, nullable: true, maxSize: 1000, url: true
		eMail			blank: true, nullable: true, maxSize: 200, email: true
		programme		blank: true, nullable: true, maxSize: 1000, url: true
		courseEnfant	blank: true, nullable: true, maxSize: 500
		commentaire1	blank: true, nullable: true, maxSize: 1000
		commentaire2	blank: true, nullable: true, maxSize: 1000
    }
}
