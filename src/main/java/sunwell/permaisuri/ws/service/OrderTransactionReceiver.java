//package sunwell.permaisuri.ws.service;
//
//import org.springframework.jms.annotation.JmsListener;
//import org.springframework.stereotype.Component;
//
//import sunwell.permaisuri.bus.dto.customer.CustomerDTO;
//import sunwell.permaisuri.core.entity.customer.Customer;
//
//@Component
//public class OrderTransactionReceiver {
//	
//	  @JmsListener(destination = "customerRequested", containerFactory = "myFactory")
//	  public void receiveMessage(CustomerDTO _c) {
//	    System.out.println("Received <" + _c.getFirstName() + ">");
//	  }
//}
