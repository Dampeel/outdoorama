package outdoorama

class Departement {

	Integer	numero
	String	nom
	Region	region
	
    static constraints = {
		numero		range: 1..100
		nom			blank: false, size: 3..100, unique: true
    }
}
