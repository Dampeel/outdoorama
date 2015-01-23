package outdoorama

class Departement {

	String	code
	String	nom
	Region	region
	
    static constraints = {
		code		blank: false, size: 2..3, unique: true
		nom			blank: false, size: 3..100, unique: true
    }
}
