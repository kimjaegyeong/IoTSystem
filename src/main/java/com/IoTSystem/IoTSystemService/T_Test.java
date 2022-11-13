package com.IoTSystem.IoTSystemService;

import java.util.ArrayList;
import com.IoTSystem.Dao.*;
import java.math.*;
public class T_Test {
		
	public String T_test_value(ArrayList<ArrayList> list) {
		
		
		double difSum = differanceSum(list);
		double difSumSquare=  differanceSumSquare(list);
		double dif= differance(list);
		
		double n= list.get(0).size();
		
		double a= difSumSquare;
	
		double b= a- (difSum/n);
	
		double c= b/((n-1)*n);

		
		double d= Math.sqrt(c);

		
		double numerator = dif/n;
	
	
		double t= numerator/d;
		double t_abs=  Math.abs(t);
		double t_3=  Math.round(t_abs*1000)/1000.0;

		String t_value=  String.valueOf(t_3);
		return t_value;
		
	}
	
	public double differanceSum(ArrayList<ArrayList> list) {
		
		double difSum=0;
		double importance=0;
		double  priority=0;
		for(int i=0; i< list.get(0).size(); i++) {
			
				importance=(Double) list.get(0).get(i);
				priority= (Double) list.get(1).get(i);
			difSum= difSum+ (importance- priority) ;
		}

		return difSum*difSum;
	}
	
public double differanceSumSquare(ArrayList<ArrayList> list) {
		
	
	double difSumSquare=0;
	double importance=0;
	double  priority=0;
	for(int i=0; i< list.get(0).size(); i++) {
		
		importance=(Double) list.get(0).get(i);
		priority= (Double) list.get(1).get(i);
		difSumSquare= difSumSquare+ (importance- priority)*(importance- priority) ;
}

	return difSumSquare;
	}

public double differance(ArrayList<ArrayList> list) {
	
	
	double difSum=0;
	double importance=0;
	double  priority=0;
	for(int i=0; i< list.get(0).size(); i++) {
		
			importance=(Double) list.get(0).get(i);
			priority= (Double) list.get(1).get(i);
		difSum= difSum+( importance- priority );
	}

	
	return difSum;
	
	
}
}
