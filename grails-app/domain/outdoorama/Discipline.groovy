package outdoorama

class Discipline {
	
	String	nom
	String	description

    static constraints = {
		nom			blank: false, size: 3..20, unique: true
		description	blank: true, maxSize: 2000
    }
}
