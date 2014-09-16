package outdoorama

class Distance {
	
	String		nom
	BigDecimal	longueur

    static constraints = {
		nom			blank: false, size: 1..10, unique: true
		longueur	min: 0.0, scale: 2
    }
}
