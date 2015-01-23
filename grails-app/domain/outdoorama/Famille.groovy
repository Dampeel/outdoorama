package outdoorama

class Famille {

	String	nom
	String	description
	
	static constraints = {
		nom			blank: false, size: 3..50, unique: true
		description	blank: true, maxSize: 300
	}
}
