package com.ecom;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Payement {
@Id
@GeneratedValue
private int paymentID;
private float amount;
private String mode;
public int getPaymentID() {
	return paymentID;
}
public void setPaymentID(int paymentID) {
	this.paymentID = paymentID;
}
public float getAmount() {
	return amount;
}
public void setAmount(float amount) {
	this.amount = amount;
}
public String getMode() {
	return mode;
}
public void setMode(String mode) {
	this.mode = mode;
}


}
