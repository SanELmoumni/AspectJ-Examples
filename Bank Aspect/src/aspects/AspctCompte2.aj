package aspects;


public aspect AspctCompte2 {
	pointcut setid() : set(* Compte_banc2.id_compte);
	
	pointcut deb(): execution(void Compte_banc2.debiter(int));
	
	pointcut cred(): execution(void Compte_banc2.crediter(int));

	after():setid(){
		System.out.println("Id du compte bancaire modifi� !");
	}
	
	before():deb(){
		System.out.println("Je v�rifierai d'abord si c'est possible de d�biter  ");				
	}
	
	after():cred(){
		System.out.println("J'ai cr�dit� ce compte bancaire.");
	

}
	}
