import outdoorama.*

class BootStrap {

    def init = { servletContext ->
		
		def regionRA = new Region(nom: "Rhône-Alpes").save(failOnError: true)
		def regionAuv = new Region(nom: "Auvergne").save(failOnError: true)
		
		def dept01 = new Departement(numero: 01, nom: "Ain", region: regionRA).save(failOnError: true)
		def dept69 = new Departement(numero: 69, nom: "Rhône", region: regionRA).save(failOnError: true)
		def dept38 = new Departement(numero: 38, nom: "Isère", region: regionRA).save(failOnError: true)
		def dept73 = new Departement(numero: 73, nom: "Savoie", region: regionRA).save(failOnError: true)
		def dept74 = new Departement(numero: 74, nom: "Haute-Savoie", region: regionRA).save(failOnError: true)
		def dept42 = new Departement(numero: 42, nom: "Loire", region: regionAuv).save(failOnError: true)
		
		def trail = new Discipline(nom: "Trail", description: "Trail").save(failOnError: true)
		def running = new Discipline(nom: "Running", description: "Running").save(failOnError: true)
		def rando = new Discipline(nom: "Rando", description: "Rando").save(failOnError: true)
		
		def dist1 = new Distance(nom:"Marathon", longueur: 42.5).save(failOnError: true)
		def dist2 = new Distance(nom:"S", longueur: 2.5).save(failOnError: true)
		def dist3 = new Distance(nom:"M", longueur: 10).save(failOnError: true)
		def dist4 = new Distance(nom:"72km", longueur: 72).save(failOnError: true)
		def dist5 = new Distance(nom:"10km", longueur: 10).save(failOnError: true)
		
		def evt1 = new Evenement(nom: "Grenoble-Vizilles", lieu: "Grenoble", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: new Date('01/06/2015'), distance: dist3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('01/06/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
		
		def evt2 = new Evenement(nom: "SaintéLyon", lieu: "St-Etienne", departement: dept42,
			texte: "\'Doyenne des classiques\' comme on l’appelle souvent, la SaintéLyon est la reine des épreuves trail, et ceci pour deux raisons essentielles : la plus ancienne avec plus de 60 éditions, et la plus populaire de France avec près de 15 000 personnes qui s’y pressent chaque année sur les différents parcours proposés.",
			siteWeb : "http://saintelyon.com", programme: "http://saintelyon.com/programme")
			.addToEpreuves(new Epreuve(nom: "SaintéLyon", date: new Date('01/07/2015'), denivele: 1800, distance: dist4, discipline: trail, lieuDepart: "Saint-Etienne", lieuArrivee: "Lyon", tarifMin: 20, tarifMax: 40, solo: true, equipe: true, relais: true)
				.addToHoraires(new Horaire(nom: "Départ solo", date: new Date('01/07/2015')))
				.addToHoraires(new Horaire(nom: "Départ equipes et relais", date: new Date('01/07/2015'))))
			.addToEpreuves(new Epreuve(nom: "SaintéSprint", date: new Date('01/07/2015'), distance: dist5, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt3 = new Evenement(nom: "Narbonne-Béziers", lieu: "Narbonne", departement: dept01)
			.addToEpreuves(new Epreuve(nom: "La course de la rose", date: new Date('01/08/2015'), denivele: 700, distance: dist4, discipline: running, lieuDepart: "Narbonne", lieuArrivee: "Béziers", tarifMin: 21, tarifMax: 9, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('01/08/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt4 = new Evenement(nom: "Fête de la tulipe", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: new Date('04/08/2015'), distance: dist3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('04/08/2015'), denivele: 2300, distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt5 = new Evenement(nom: "Test 3", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: new Date('01/05/2015'), distance: dist3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: new Date('01/05/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt6 = new Evenement(nom: "Allez les bleus", lieu: "Lyon", departement: dept69)
			.addToEpreuves(new Epreuve(nom: "L'autre course", date: new Date('02/05/2015'), denivele: 300, distance: dist2, discipline: trail, lieuDepart: "Lyon", lieuArrivee: "Vizilles", tarifMin: 15, tarifMax: 1140, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "La course", date: new Date('02/05/2015'), denivele: 100, distance: dist1, discipline: trail, lieuDepart: "Vénissieux", lieuArrivee: "Vizilles", tarifMin: 29, tarifMax: 140, solo: true, equipe: true, relais: true))
			.save(failOnError: true)
			
		def evt7 = new Evenement(nom: "Test 5", lieu: "Aix-les-bains", departement: dept01)
			.addToEpreuves(new Epreuve(date: new Date('01/08/2016'), distance: dist3, discipline: trail, tarifMin: 2, tarifMax: 9, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: new Date('02/08/2016'), distance: dist2, discipline: trail, tarifMin: 18, tarifMax: 29, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt8 = new Evenement(nom: "Course des castors", lieu: "Villeurbanne", departement: dept01)
			.addToEpreuves(new Epreuve(date: new Date('01/10/2015'), denivele: 1010, distance: dist3, discipline: trail, solo: true, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(date: new Date('01/10/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt9 = new Evenement(nom: "Le relais vaudois", lieu: "Vaulx-en-velin", departement: dept74)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: new Date('03/08/2015'), denivele: 850, distance: dist3, discipline: trail, solo: false, equipe: true, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('03/08/2015'), distance: dist2, discipline: trail, lieuDepart: "Vaulx-en-velin", lieuArrivee: "Lyon", solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt10 = new Evenement(nom: "La course test", lieu: "Montbonnot", departement: dept73)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: new Date('11/08/2015'), denivele: 120, lieuDepart: "Montbonnot", lieuArrivee: "Grenoble", distance: dist3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('11/08/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt11 = new Evenement(nom: "Trail du fort", lieu: "Grenoble", departement: dept69)
			.addToEpreuves(new Epreuve(date: new Date('14/08/2015'), distance: dist3, discipline: trail, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(date: new Date('14/08/2015'), distance: dist2, discipline: trail, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt12 = new Evenement(nom: "Ultra mini trail", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(nom: "Trail 10km", date: new Date('08/08/2015'), denivele: 1300, distance: dist3, discipline: trail, tarifMin: 27, tarifMax: 28, solo: true, equipe: false, relais: true))
			.addToEpreuves(new Epreuve(nom: "Trail 2,5km", date: new Date('08/08/2015'), distance: dist2, discipline: trail, tarifMin: 23, tarifMax: 40, solo: true, equipe: true, relais: false))
			.save(failOnError: true)
			
		def evt13 = new Evenement(nom: "L'épreuve iséroise", lieu: "Grenoble", departement: dept38)
			.addToEpreuves(new Epreuve(date: new Date('01/09/2015'), distance: dist3, discipline: trail, tarifMin: 10, tarifMax: 20, solo: true, equipe: false, relais: false))
			.addToEpreuves(new Epreuve(date: new Date('01/09/2015'), distance: dist2, discipline: trail, tarifMin: 13, tarifMax: 32, solo: true, equipe: false, relais: false))
			.save(failOnError: true)
		
    }
	
    def destroy = {
    }
}
