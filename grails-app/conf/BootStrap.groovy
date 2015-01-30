import outdoorama.*

class BootStrap {

    /*def init = { servletContext ->
		
		def regionRA = new Region(code:"RA", nom: "Rhone-Alpes").save(failOnError: true)
		def regionAuv = new Region(code: "AUV", nom: "Auvergne").save(failOnError: true)
		
		def dept01 = new Departement(code: "01", nom: "Ain", region: regionRA).save(failOnError: true)
		def dept69 = new Departement(code: "69", nom: "Rhone", region: regionRA).save(failOnError: true)
		def dept38 = new Departement(code: "38", nom: "Isère", region: regionRA).save(failOnError: true)
		def dept73 = new Departement(code: "73", nom: "Savoie", region: regionRA).save(failOnError: true)
		def dept74 = new Departement(code: "74", nom: "Haute-Savoie", region: regionRA).save(failOnError: true)
		def dept42 = new Departement(code: "42", nom: "Loire", region: regionAuv).save(failOnError: true)
		
		def trail = new Discipline(nom: "Trail", description: "Trail").save(failOnError: true)
		def running = new Discipline(nom: "Running", description: "Running").save(failOnError: true)
		def rando = new Discipline(nom: "Rando", description: "Rando").save(failOnError: true)
		
		def fam1 = new Famille(nom:"Marathon", description: "Marathon").save(failOnError: true)
		def fam2 = new Famille(nom:"Famille 1", description: "Famille 1").save(failOnError: true)
		def fam3 = new Famille(nom:"Famille 2", description: "Famille 2").save(failOnError: true)
		
		def evt1 = new Evenement(url:"grenoble-vizille", nom: "Grenoble-Vizilles", lieu: "Grenoble", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '01/06/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '01/06/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
		
		def evt2 = new Evenement(url:"saintelyon", nom: "SaintéLyon", lieu: "St-Etienne", departement: dept42,
			texte: "\'Doyenne des classiques\' comme on l’appelle souvent, la SaintéLyon est la reine des épreuves trail, et ceci pour deux raisons essentielles : la plus ancienne avec plus de 60 éditions, et la plus populaire de France avec près de 15 000 personnes qui s’y pressent chaque année sur les différents parcours proposés.",
			siteWeb : "http://saintelyon.com", programme: "http://saintelyon.com/programme")
			.addToEpreuves(new Epreuve(nom: "SaintéLyon", date: Date.parse("dd/MM/yyyy", '01/07/2015'), denivele: 1800, famille: fam1, discipline: trail, lieuDepart: "Saint-Etienne", lieuArrivee: "Lyon", tarifMin: 20, tarifMax: 40, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "SaintéSprint", date: Date.parse("dd/MM/yyyy", '01/07/2015'), famille: fam1, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt3 = new Evenement(url:"beziernarbonne", nom: "Narbonne-Béziers", lieu: "Narbonne", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "La course de la rose", date: Date.parse("dd/MM/yyyy", '01/08/2015'), denivele: 700, famille: fam1, discipline: running, lieuDepart: "Narbonne", lieuArrivee: "Béziers", tarifMin: 21, tarifMax: 9, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '01/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt4 = new Evenement(url:"tulipe", nom: "Fête de la tulipe", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '04/08/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '04/08/2015'), denivele: 2300, famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt5 = new Evenement(url:"test", nom: "Test 3", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/05/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/05/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt6 = new Evenement(url:"bleus", nom: "Allez les bleus", lieu: "Lyon", departement: dept69)
			.addToEpreuves(new Epreuve(nom: "L'autre course", date: Date.parse("dd/MM/yyyy", '02/05/2015'), denivele: 300, famille: fam2, discipline: trail, lieuDepart: "Lyon", lieuArrivee: "Vizilles", tarifMin: 15, tarifMax: 1140, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "La course", date: Date.parse("dd/MM/yyyy", '02/05/2015'), denivele: 100, famille: fam1, discipline: trail, lieuDepart: "Vénissieux", lieuArrivee: "Vizilles", tarifMin: 29, tarifMax: 140, solo: true, equipe: true, relais: true))
			.save(failOnError: true)
			
		def evt7 = new Evenement(url:"test5", nom: "Test 5", lieu: "Aix-les-bains", departement: dept01)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/08/2016'), famille: fam3, discipline: trail, tarifMin: 2, tarifMax: 9, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '02/08/2016'), famille: fam2, discipline: trail, tarifMin: 18, tarifMax: 29, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt8 = new Evenement(url:"castors", nom: "Course des castors", lieu: "Villeurbanne", departement: dept01)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/10/2015'), denivele: 1010, famille: fam3, discipline: trail, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/10/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt9 = new Evenement(url:"vaud", nom: "Le relais vaudois", lieu: "Vaulx-en-velin", departement: dept74)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '03/08/2015'), denivele: 850, famille: fam3, discipline: trail, solo: false, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '03/08/2015'), famille: fam2, discipline: trail, lieuDepart: "Vaulx-en-velin", lieuArrivee: "Lyon", solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt10 = new Evenement(url:"testcourse", nom: "La course test", lieu: "Montbonnot", departement: dept73)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '11/08/2015'), denivele: 120, lieuDepart: "Montbonnot", lieuArrivee: "Grenoble", famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '11/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt11 = new Evenement(url:"fort", nom: "Trail du fort", lieu: "Grenoble", departement: dept69)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '14/08/2015'), famille: fam3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '14/08/2015'), famille: fam2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt12 = new Evenement(url:"mini", nom: "Ultra mini trail", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: Date.parse("dd/MM/yyyy", '08/08/2015'), denivele: 1300, famille: fam3, discipline: trail, tarifMin: 27, tarifMax: 28, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: Date.parse("dd/MM/yyyy", '08/08/2015'), famille: fam2, discipline: trail, tarifMin: 23, tarifMax: 40, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt13 = new Evenement(url:"isere", nom: "L'épreuve iséroise", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/09/2015'), famille: fam3, discipline: trail, tarifMin: 10, tarifMax: 20, solo: true, equipe: false, relais: false))
			.addToEpreuves(new Epreuve(date: Date.parse("dd/MM/yyyy", '01/09/2015'), famille: fam2, discipline: trail, tarifMin: 13, tarifMax: 32, solo: true, equipe: false, relais: false))
			.save(failOnError: true)
		
    }*/
	
    def destroy = {
    }
}
