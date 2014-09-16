package outdoorama

class Evenement {
	
	String	nom
	String	lieu
	String	texte
	String	siteWeb
	String	programme
	
	Departement	departement
	
	static hasMany = [epreuves: Epreuve]

    static constraints = {
		nom			blank: false, size: 3..100, unique: true
		lieu		blank: false, size: 3..100
		texte		blank: true, nullable: true, maxSize: 3000
		siteWeb		blank: true, nullable: true, maxSize: 1000, url: true
		programme	blank: true, nullable: true, maxSize: 1000, url: true
    }
}
