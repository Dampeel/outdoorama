package outdoorama

class Horaire {
	
	String	nom
	Date	date
	Epreuve	epreuve
	
	static belongsTo = Epreuve

    static constraints = {
		nom	blank: false, size: 3..50
    }
}
