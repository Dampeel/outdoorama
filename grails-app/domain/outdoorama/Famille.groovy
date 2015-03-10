package outdoorama

class Famille {

	String	id
	String	description
	
	static mapping = {
		id		generator: "assigned"
		sort	"id"
	 }
	
	static constraints = {
		id			blank: false, size: 3..50, unique: true
		description	blank: true, maxSize: 300
	}
}