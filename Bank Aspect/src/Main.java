	
	public class Main {
	
		public static void main(String[] args) {
			// TODO Auto-generated method stub
	
			Compte_banc2 cb=new Compte_banc2();
			
			System.out.println("L'id du compte est : "+cb.get_id());
			cb.set_id(500);
			System.out.println("Le nouvel id du compte est : "+cb.get_id());
			System.out.println();
			
			cb.set_solde(600);
			System.out.println("Le solde du compte est : "+cb.get_solde());
			System.out.println();
			
			System.out.println("Je souhaite maintenant débiter le solde du compte !");
			cb.debiter(800);
			System.out.println("Le solde du compte est : "+cb.get_solde());
			System.out.println();
			
			cb.crediter(1000);
			System.out.println("Le nouveau solde est : "+cb.get_solde());
		}
	
	}
