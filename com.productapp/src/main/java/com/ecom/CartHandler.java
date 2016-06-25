package com.ecom;

import org.springframework.stereotype.Component;

@Component
public class CartHandler {
	public static final java.util.List<PersonalComputer> pclist=new java.util.LinkedList();
public String addtocart(PersonalComputer computer)
{
	pclist.add(computer);
return "Pc Added to Cart";
}
public String DisplayTotalPrice()
{
float sum=0;
for(PersonalComputer p:pclist)
{
	sum+=p.getPrice()*p.getQuantity();
    
}
return "Total Amount --- >"+sum;
}
   public String MakePayment(Payement p)
   {
	   return "Amount to be paid for total ";
   }
}
