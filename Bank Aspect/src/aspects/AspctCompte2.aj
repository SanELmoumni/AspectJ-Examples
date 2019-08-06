package aspects;


public aspect AspctCompte2 {
	pointcut setid() : set(* Compte_banc2.id_compte);
	
	pointcut deb(): execution(void Compte_banc2.debiter(int));
	
	pointcut cred(): execution(void Compte_banc2.crediter(int));

	after():setid(){
		System.out.println("Id du compte bancaire modifié !");
	}
	
	before():deb(){
		System.out.println("Je vérifierai d'abord si c'est possible de débiter  ");				
	}
	
	after():cred(){
		System.out.println("J'ai crédité ce compte bancaire.");
	

}
	}
