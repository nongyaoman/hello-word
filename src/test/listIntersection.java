package test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;



public class listIntersection {
	
	
	public static void main(String[] args) {
		
		 List<Integer> A = new ArrayList<Integer>();
		    A.add(1);
		    A.add(2);
		    A.add(3);
		    A.add(4);

		    List<Integer> B = new ArrayList<Integer>();
		    B.add(2);
		    B.add(4);
		    B.add(5);
		    B.add(6);

		    Collection C = new ArrayList<Integer>(A);
		    
		    
		    System.out.println("A的值为:"+A);
		    System.out.println("B的值为:"+B);
		    System.out.println("C的值为:"+C);
		    
		    //B.addAll(C);
		    B.removeAll(C);
		    System.out.println(B);
		    
		    C.retainAll(B);
		    System.out.println("A 与 B 交集：" + C);

		    B.removeAll(C);
		    System.out.println("A 关于 B 的相对补集：" + B);

		    A.removeAll(C);
		    System.out.println("B 关于 A 的相对补集：" + A);
		
		    String xiaoyu="<";
		    if(xiaoyu=="<"){
		    	 System.out.println("13212312312");
		    }
		
		
		
	}
	
}
