package test;

public class Test {

	public static void main(String[] args) {

		int dPct[]={0,1,2,3,4,5,6,7,8,9};
		int yPct[]={7,8,9};
		int[] yieldValue = new int[10];
		if(dPct.length>0 && yPct.length<= dPct.length){
			int i=dPct.length-yPct.length;
			if(i>0 && yPct.length>0){
				for(int index=0;index<i;index++){
					yieldValue[index]=1;
				}
				for(int index=dPct.length-i;index<dPct.length;index++){
					yieldValue[index]=index;
				}
			}else if(i>0 && yPct.length==0){
				for(int index=0;index<dPct.length;index++){
					yieldValue[index]=index;
				}
			}
			
		}
		System.out.print(yieldValue[9]);
		
	}

}
