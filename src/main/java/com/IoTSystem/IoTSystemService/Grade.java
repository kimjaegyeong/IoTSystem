package com.IoTSystem.IoTSystemService;

import java.util.ArrayList;

public class Grade {

	public String Grade_Cal(double t_value) {
		
	
			if(t_value>=6.761) { //평균+표준편차 6.761
			
			return "3";
		}
		else if(t_value>=2.955 && t_value<=6.758) {
			return "2";
		}
			
		else if(t_value<=2.896) { //평균-표준편차 2.896 
		
			return "1";
		}
			
		else {
		return "0.0";
		
		}
	}
	
	public String Grade_Cal(double t_value, ArrayList<Double> total_t_value) {
		Double avg =avg(total_t_value); //전체 t값의 평균 값 
		Double standard_deviation= standard_deviation(avg, total_t_value, total_t_value.size()); //전체 t값에 대한 표준편차 

	if(t_value>= avg+standard_deviation) { //평균+표준편차가 해당 기능의 t값 보다 큰 경우에

			return "3";
		}
		else if(t_value>avg-standard_deviation && t_value<avg+standard_deviation) { 
			// 해당기능의 t값이 전체 t값의 평균-표준편차보다 크고, 해당기능의 t값이 전체 t값의 평균+표준편차보다 작은 경우


			return "2";
		}
			
		else if(t_value<avg-standard_deviation){ //해당기능의 t값이 전체 t값의 평균-표준편차보다 작은 경우 
		
			
			return "1";
		}
			
		else {
		return "0.0";
		
		}
	
		 }
	
	public Double avg(ArrayList<Double> total_t_value) {
		double avg=0.0;
		for(int i=0; i<total_t_value.size(); i++) {
			avg=avg+total_t_value.get(i);
		}
	     
		avg= avg/total_t_value.size();
	
		return avg;
	}
	
	public Double standard_deviation(Double avg, ArrayList<Double> total_t_value, int size) {
		
		double standard_deviation=0.0;

		
		for( int i=0; i<size; i++) {
			
			standard_deviation= standard_deviation + ((total_t_value.get(i)-avg)*(total_t_value.get(i)-avg));
		
		}
		
		standard_deviation= standard_deviation/(size-1);	
		standard_deviation= Math.sqrt(standard_deviation);
		return standard_deviation;
	}
	
	
	}
