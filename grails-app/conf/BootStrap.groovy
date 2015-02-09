import outdoorama.*

class BootStrap {

    def init = { servletContext ->
		
		def regionRA = new Region(nom: "Rhone-Alpes")
		regionRA.id = "RA"
		regionRA.save(failOnError: true)
		def regionAuv = new Region(nom: "Auvergne")
		regionAuv.id = "AUV"
		regionAuv.save(failOnError: true)
		
		def dept01 = new Departement(nom: "Ain", region: regionRA)
		dept01.id = "01"
		dept01.save(failOnError: true)
		def dept69 = new Departement(nom: "Rhone", region: regionRA)
		dept69.id = "69"
		dept69.save(failOnError: true)
		def dept38 = new Departement(nom: "Isère", region: regionRA)
		dept38.id = "38"
		dept38.save(failOnError: true)
		def dept73 = new Departement(nom: "Savoie", region: regionRA)
		dept73.id = "73"
		dept73.save(failOnError: true)
		def dept74 = new Departement(nom: "Haute-Savoie", region: regionRA)
		dept74.id = "74"
		dept74.save(failOnError: true)
		def dept42 = new Departement(nom: "Loire", region: regionAuv)
		dept42.id = "42"
		dept42.save(failOnError: true)
		
		def trail = new Discipline(description: "Trail")
		trail.id = "Trail"
		trail.save(failOnError: true)
		def running = new Discipline(description: "Running")
		running.id = "Running"
		running.save(failOnError: true)
		def rando = new Discipline(description: "Rando")
		rando.id = "Rando"
		rando.save(failOnError: true)
		
		def fam1 = new Famille(description: "Marathon")
		fam1.id = "Marathon"
		fam1.save(failOnError: true)
		def fam2 = new Famille(description: "Famille 1")
		fam2.id = "Famille 1"
		fam2.save(failOnError: true)
		def fam3 = new Famille(description: "Famille 2")
		fam3.id = "Famille 2"
		fam3.save(failOnError: true)
		
		def evt1 = new Evenement(nom: "Grenoble-Vizilles", lieu: "Grenoble", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '01/06/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '01/06/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt1.id = "grenoble-vizille"
		evt1.save(failOnError: true)
		
		def evt2 = new Evenement(nom: "SaintéLyon", lieu: "St-Etienne", departement: dept42,
			texte: "\'Doyenne des classiques\' comme on l’appelle souvent, la SaintéLyon est la reine des épreuves trail, et ceci pour deux raisons essentielles : la plus ancienne avec plus de 60 éditions, et la plus populaire de France avec près de 15 000 personnes qui s’y pressent chaque année sur les différents parcours proposés.",
			siteWeb : "http://saintelyon.com", programme: "http://saintelyon.com/programme")
			.addToEpreuves(new Epreuve(nom: "SaintéLyon", date: Date.parse("dd/MM/yyyy", '01/07/2015'), distance: 72.0, denivele: 1800, famille: fam1, discipline: trail, lieuDepart: "Saint-Etienne", lieuArrivee: "Lyon", tarifMin: 20, tarifMax: 40, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "SaintéSprint", date: Date.parse("dd/MM/yyyy", '01/07/2015'), famille: fam1, discipline: trail, solo: true, equipe: true, relais: false))
		evt2.id = "sainté-lyon"
		evt2.save(failOnError: true)
			
		def evt3 = new Evenement(nom: "Narbonne-Béziers", lieu: "Narbonne", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "La course de la rose", date: Date.parse("dd/MM/yyyy", '01/08/2015'), distance: 10.0, denivele: 700, famille: fam1, discipline: running, lieuDepart: "Narbonne", lieuArrivee: "Béziers", tarifMin: 21, tarifMax: 9, solo: true, equipe: true, relais: true, courseFeminine: true, courseNocturne: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '01/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt3.id = "beziernarbonne"
		evt3.save(failOnError: true)
			
		def evt4 = new Evenement(nom: "Fête de la tulipe", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '04/08/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '04/08/2015'), denivele: 2300, famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt4.id = "tulipe"
		evt4.save(failOnError: true)
			
		def evt5 = new Evenement(nom: "Test 3", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/05/2015'), distance: 10.0, famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/05/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt5.id = "test3"
		evt5.save(failOnError: true)
			
		def evt6 = new Evenement(nom: "Allez les bleus", lieu: "Lyon", departement: dept69)
			.addToEpreuves(new Epreuve(nom: "L'autre course", date: Date.parse("dd/MM/yyyy", '02/05/2015'), distance: 2.0, denivele: 300, famille: fam2, discipline: trail, lieuDepart: "Lyon", lieuArrivee: "Vizilles", tarifMin: 15, tarifMax: 1140, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "La course", date: Date.parse("dd/MM/yyyy", '02/05/2015'), distance: 1.0, denivele: 100, famille: fam1, discipline: trail, lieuDepart: "Vénissieux", lieuArrivee: "Vizilles", tarifMin: 29, tarifMax: 140, solo: true, equipe: true, relais: true))
		evt6.id = "bleus"
		evt6.save(failOnError: true)
			
		def evt7 = new Evenement(nom: "Test 5", lieu: "Aix-les-bains", departement: dept01)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/08/2016'), famille: fam3, discipline: trail, tarifMin: 2, tarifMax: 9, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '02/08/2016'), famille: fam2, discipline: trail, tarifMin: 18, tarifMax: 29, solo: true, equipe: true, relais: false))
		evt7.id = "test5"
		evt7.save(failOnError: true)
			
		def evt8 = new Evenement(nom: "Course des castors", lieu: "Villeurbanne", departement: dept01)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/10/2015'), pointsUTMB: 5, denivele: 1010, famille: fam3, discipline: trail, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/10/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt8.id = "castors"
		evt8.save(failOnError: true)
			
		def evt9 = new Evenement(nom: "Le relais vaudois", lieu: "Vaulx-en-velin", departement: dept74)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '03/08/2015'), denivele: 850, famille: fam3, discipline: trail, solo: false, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '03/08/2015'), famille: fam2, discipline: trail, lieuDepart: "Vaulx-en-velin", lieuArrivee: "Lyon", solo: true, equipe: true, relais: false))
		evt9.id = "vaudois"
		evt9.save(failOnError: true)
			
		def evt10 = new Evenement(nom: "La course test", lieu: "Montbonnot", departement: dept73)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '11/08/2015'), denivele: 120, lieuDepart: "Montbonnot", lieuArrivee: "Grenoble", famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '11/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt10.id = "testcourse"
		evt10.save(failOnError: true)
			
		def evt11 = new Evenement(nom: "Trail du fort", lieu: "Grenoble", departement: dept69)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '14/08/2015'), pointsUTMB: 12, famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '14/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
		evt11.id = "fort"
		evt11.save(failOnError: true)
			
		def evt12 = new Evenement(nom: "Ultra mini trail", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '08/08/2015'), denivele: 1300, famille: fam3, discipline: trail, tarifMin: 27, tarifMax: 28, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '08/08/2015'), famille: fam2, discipline: trail, tarifMin: 23, tarifMax: 40, solo: true, equipe: true, relais: false))
		evt12.id = "mini"
		evt12.save(failOnError: true)
			
		def evt13 = new Evenement(url:"isere", nom: "L'épreuve iséroise", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/09/2015'), pointsUTMB: 10, famille: fam3, discipline: trail, tarifMin: 10, tarifMax: 20, solo: true, equipe: false, relais: false))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/09/2015'), famille: fam2, discipline: trail, tarifMin: 13, tarifMax: 32, solo: true, equipe: false, relais: false))
		evt13.id = "isere"
		evt13.save(failOnError: true)
		
    }
	
    def destroy = {
    }
}
