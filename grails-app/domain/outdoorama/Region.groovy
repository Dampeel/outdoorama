package outdoorama

class Region {

	String	id
	String	nom
	
	static mapping = {
		id		generator: "assigned"
		sort	"nom"
	 }
	
    static constraints = {
		id		blank: false, size: 2..5, unique: true
		nom		blank: false, size: 3..100, unique: true
    }
}
