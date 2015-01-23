package outdoorama

class Region {

	String	code
	String	nom
	
    static constraints = {
		code	blank: false, size: 2..5, unique: true
		nom		blank: false, size: 3..100, unique: true
    }
}
