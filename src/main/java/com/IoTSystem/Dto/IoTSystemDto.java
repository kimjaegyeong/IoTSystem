package com.IoTSystem.Dto;

public class IoTSystemDto {


	private String product;
	private String IoT_function;
	private int importance;
	private int priority;
	private int weight; 
	private String relation_IoT;
	private String testMethod;
	private String property;
	private String action;
	private String interface_relationship;
	private String independence;
	
	public IoTSystemDto() {
		
	}
	
	public IoTSystemDto(String product, String IoT_function, String property, String action, String interface_relationship, String independence) {
		this.product= product;
		this.IoT_function= IoT_function;
		this.property= property;
		this.action=action;
		this.interface_relationship= interface_relationship;
		this.independence= independence;
	}
	
	
	public IoTSystemDto(String product, String IoT_function, int importance, int priority, int weight, String relation_IoT, String testMethod) {
		this.product= product;
		this.IoT_function= IoT_function;
		this.importance= importance;
		this.priority= priority;
		this.weight= weight;
		this.relation_IoT= relation_IoT;
		this.testMethod= testMethod;
	}
	
	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getIoT_function() {
		return IoT_function;
	}

	public void setIoT_function(String ioT_function) {
		IoT_function = ioT_function;
	}

	public int getImportance() {
		return importance;
	}

	public void setImportance(int importance) {
		this.importance = importance;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getRelation_IoT() {
		return relation_IoT;
	}

	public void setRelation_IoT(String relation_IoT) {
		this.relation_IoT = relation_IoT;
	}

	public String getTestMethod() {
		return testMethod;
	}

	public void setTestMethod(String testMethod) {
		this.testMethod = testMethod;
	}

	public String getProperty() {
		return property;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getInterface_relationship() {
		return interface_relationship;
	}

	public void setInterface_relationship(String interface_relationship) {
		this.interface_relationship = interface_relationship;
	}

	public String getIndependence() {
		return independence;
	}

	public void setIndependence(String independence) {
		this.independence = independence;
	}
}

