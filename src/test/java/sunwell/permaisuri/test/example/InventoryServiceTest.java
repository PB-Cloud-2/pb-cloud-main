package sunwell.permaisuri.test.example;
//package sunwell.permaisuri.test;
//
//import static org.junit.Assert.assertEquals;
//
//import static org.junit.Assert.assertNotNull;
//
//import org.junit.Before;
//import org.junit.Ignore;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.mockito.Mockito;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
//import org.springframework.boot.test.mock.mockito.MockBean;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import sunwell.permaisuri.bus.repository.ItemCategoryRepo;
//import sunwell.permaisuri.bus.repository.ItemRepo;
//import sunwell.permaisuri.bus.repository.MerkRepo;
//import sunwell.permaisuri.bus.repository.MetricRepo;
//import sunwell.permaisuri.bus.repository.ProductImageRepo;
//import sunwell.permaisuri.bus.repository.ProductSellPriceRepo;
//import sunwell.permaisuri.bus.repository.SellPriceLevelRepo;
//import sunwell.permaisuri.bus.service.ProductSvc;
//import sunwell.permaisuri.core.entity.inventory.Merk;
//
//@RunWith(SpringRunner.class)
//@ContextConfiguration(classes = {ProductSvc.class})
//public class InventoryServiceTest {
//	
////	@Autowired
////    private TestEntityManager entityManager;
//	
//	@MockBean
//	ItemRepo itemRepo;
//	
//	@MockBean
//	ProductSellPriceRepo pspRepo;
//	
//	@MockBean
//	ItemCategoryRepo icRepo;
//	
//	@MockBean
//	MerkRepo merkRepo;
//	
//	@MockBean
//	MetricRepo metricRepo;;
//	
//	@MockBean
//	SellPriceLevelRepo splRepo;
//	
//	@MockBean
//	ProductImageRepo piRepo;
//	
//	@Autowired
//	ProductSvc pSvc;
//	
//	@Before
//	public void setup() {
//		Merk merk = new Merk("Jambon");
//		Mockito.when(merkRepo.findByName("Jambon")).thenReturn(merk);
//	}
//	
////	@Ignore
//	@Test
//	public void findByName() {
//		String name = "Jambon";
//		Merk m = pSvc.findMerkByName(name);
//		assertEquals(name, m.getName());
//	}
//}
