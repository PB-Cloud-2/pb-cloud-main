//package sunwell.permaisuri.test.service.sales;
//
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNotNull;
//import static org.junit.Assert.assertTrue;
//
//import java.util.LinkedList;
//import java.util.List;
//
//import javax.annotation.PostConstruct;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.mockito.AdditionalAnswers;
//import org.mockito.Mockito;
//import org.mockito.stubbing.Answer;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
//import org.springframework.boot.test.mock.mockito.MockBean;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Import;
//import org.springframework.test.context.ActiveProfiles;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.jdbc.Sql;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import sunwell.permaisuri.Application;
//import sunwell.permaisuri.bus.repository.CartDetailRepo;
//import sunwell.permaisuri.bus.repository.ItemCategoryRepo;
//import sunwell.permaisuri.bus.repository.ItemRepo;
//import sunwell.permaisuri.bus.repository.MerkRepo;
//import sunwell.permaisuri.bus.repository.MetricRepo;
//import sunwell.permaisuri.bus.repository.PaymentImageRepo;
//import sunwell.permaisuri.bus.repository.ProductImageRepo;
//import sunwell.permaisuri.bus.repository.ProductSellPriceRepo;
//import sunwell.permaisuri.bus.repository.SalesInvoiceItemRepo;
//import sunwell.permaisuri.bus.repository.SalesInvoiceRepo;
//import sunwell.permaisuri.bus.repository.SalesOrderItemRepo;
//import sunwell.permaisuri.bus.repository.SalesOrderRepo;
//import sunwell.permaisuri.bus.repository.SellPriceLevelRepo;
//import sunwell.permaisuri.bus.service.InventoryService;
//import sunwell.permaisuri.bus.service.ProductService;
//import sunwell.permaisuri.bus.service.ProductSvc;
//import sunwell.permaisuri.bus.service.SalesService;
//import sunwell.permaisuri.bus.service.SalesSvc;
//import sunwell.permaisuri.bus.service.UserCredService;
//import sunwell.permaisuri.core.entity.customer.Customer;
//import sunwell.permaisuri.core.entity.inventory.Merk;
//import sunwell.permaisuri.core.entity.sales.SalesOrder;
//
//@RunWith(SpringRunner.class)
//@ContextConfiguration(classes = {SalesSvc.class})
//public class SalesSvcTest {
//	
////	@Autowired
////    private TestEntityManager entityManager;
//////	
////	@MockBean
////	private MerkRepo merkRepo;
////	
//	@MockBean
//	InventoryService invSvc;
//	
//	@MockBean
//	ProductService productSvc;
//	
//	@MockBean
//	UserCredService userCredSvc;
//	
//	@MockBean
//	SalesOrderRepo soRepo;
//	
//	@MockBean
//	SalesInvoiceRepo siRepo;	
//	
//	@MockBean
//	SalesOrderItemRepo soItemRepo;
//	
//	@MockBean
//	SalesInvoiceItemRepo siItemRepo;
//	
//	@MockBean
//	CartDetailRepo cdRepo;
//	
//	@MockBean
//	PaymentImageRepo payImgRepo;
//	
//	@Autowired
//	private SalesSvc salesSvc ;
//	
//	@Test
//	public void findAllSalesOrders() {
//		SalesOrder so1 = new SalesOrder(2);
//		SalesOrder so2 = new SalesOrder(2);
//		SalesOrder so3 = new SalesOrder(3);
//		List<SalesOrder> listSo = new LinkedList<>();
//		listSo.add(so1);
//		listSo.add(so2);
//		listSo.add(so3);
//		Mockito.when(soRepo.findAll()).thenReturn(listSo);
//		List<SalesOrder> returnedList = salesSvc.findAllSalesOrder();
//		assertNotNull(returnedList);
//		assertTrue(returnedList.size() > 0);		
//	}
//	
//	@Test
//	public void addSalesOrder() {
//		List<SalesOrder> listSalesOrder = new LinkedList<>();
//		SalesOrder so = new SalesOrder(1);
//		so.setCustomer(new Customer(1));
//		
//		Mockito.when(userCredSvc.findCustomer(Mockito.anyLong())).thenReturn(new Customer(1));
//		
//		Mockito.doAnswer((Answer) invocation -> {
//			System.out.println("CALLED HERE !!!!!!");
//			SalesOrder arg = invocation.getArgument(0);
//			listSalesOrder.add(arg);
//			return null;
//		}).when(soRepo).save(so);
//		
//		salesSvc.addSalesOrder(so);
//		assertEquals(listSalesOrder.get(0), so);
//	}
//	
//}
