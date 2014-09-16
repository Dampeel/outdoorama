package outdoorama

import java.util.Date;

class Epreuve {
	
	Date		date
	String		nom
	Integer		denivele
	String		lieuDepart
	String		lieuArrivee
	BigDecimal	tarifMin
	BigDecimal	tarifMax
	boolean		solo
	boolean		equipe
	boolean		relais
	
	Evenement	evenement
	Distance	distance
	Discipline	discipline
	
	static belongsTo = Evenement
	
	static hasMany = [horaires: Horaire]

    static constraints = {
		nom			blank: true, nullable: true, size: 3..100
		denivele	nullable: true, min: 0
		horaires	blank: true, nullable: true, maxSize: 200
		lieuDepart	blank: true, nullable: true, maxSize: 200
		lieuArrivee	blank: true, nullable: true, maxSize: 200
		tarifMin	nullable: true, min: 0.0, scale: 2
		tarifMax	nullable: true, min: 0.0, scale: 2
    }
}
