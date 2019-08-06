package aspects;

public aspect MoveTracking {
	private static boolean flag=false;
	public static int cpt=0;
	public static boolean testAndClear(){
		boolean result=flag;
		flag=false;
		return result;
	}
	
	pointcut created() : set(* PointJ.x);
	
	
	//pointcut created() : execution(void LineJ.setP1(PointJ)) || execution(void LineJ.setP2(PointJ));

	before():created() {
		cpt++;
		System.out.println("Je suis dns l'aspect, j'a fait appel au setter de x de la classe PointJ "+cpt+" fois.");
		flag = true;
		}

}

