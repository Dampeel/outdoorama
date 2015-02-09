package outdoorama

class Departement {

	String	id
	String	nom
	Region	region
	
	static mapping = {
		id		generator: "assigned"
		sort	"nom"
	 }
	
    static constraints = {
		id		blank: false, size: 2..3, unique: true
		nom		blank: false, size: 3..100, unique: true
    }
}
