
public class Compte_banc2 {

	int id_compte;
	int solde;
	
	
	public void set_id(int i) {
		id_compte = i;
	}
	public void set_solde(int s) {
		solde = s;
	}
	
	public int get_id() {
		return id_compte;
	}
	
	public int get_solde() {
		return solde;
	}
	
	public void debiter(int val) {		
		try {
			if(val > solde ) 
				throw new Exception();
		
			this.solde -= val;
		}
		catch (Exception e) {
			System.out.println("Impossible de débiter le compte.");
		}
	}
	
	public void crediter(int val) {
		solde += val;
	}
	
}


