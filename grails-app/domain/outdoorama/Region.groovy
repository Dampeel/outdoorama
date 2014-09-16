package outdoorama

class Region {

	String nom
	
    static constraints = {
		nom	blank: false, size: 3..100, unique: true
    }
}
