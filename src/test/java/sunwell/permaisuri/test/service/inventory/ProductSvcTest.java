//package sunwell.permaisuri.test.service.inventory;
//
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNotNull;
//import static org.junit.Assert.assertTrue;
//
//import java.util.List;
//
//import javax.annotation.PostConstruct;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.mockito.AdditionalAnswers;
//import org.mockito.Mockito;
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
//import sunwell.permaisuri.bus.repository.ItemCategoryRepo;
//import sunwell.permaisuri.bus.repository.ItemRepo;
//import sunwell.permaisuri.bus.repository.MerkRepo;
//import sunwell.permaisuri.bus.repository.MetricRepo;
//import sunwell.permaisuri.bus.repository.ProductImageRepo;
//import sunwell.permaisuri.bus.repository.ProductSellPriceRepo;
//import sunwell.permaisuri.bus.repository.SellPriceLevelRepo;
//import sunwell.permaisuri.bus.service.ProductService;
//import sunwell.permaisuri.bus.service.ProductSvc;
//import sunwell.permaisuri.core.entity.inventory.Merk;
//
//@RunWith(SpringRunner.class)
//@ContextConfiguration(classes = {Application.class})
//@DataJpaTest
//@Sql("/sunwell/permaisuri/test/dbp4.sql")
////@ActiveProfiles({"production"})
////@Import(TestConfig.class)
//public class ProductSvcTest {
//	
//	@Autowired
//    private TestEntityManager entityManager;
////	
//	@Autowired
//	private MerkRepo merkRepo;
//////	
////	@MockBean
////	ItemRepo itemRepo;
////	
////	@MockBean
////	ProductSellPriceRepo pspRepo;
////	
////	@MockBean
////	ItemCategoryRepo icRepo;
////	
////	@MockBean
////	MetricRepo metricRepo;;
////	
////	@MockBean
////	SellPriceLevelRepo splRepo;
////	
////	@MockBean
////	ProductImageRepo piRepo;
////	
////	@Autowired
//	private ProductSvc prodSvc;
//	
////	@PostConstruct
////	public void init() {
////		prodSvc = new ProductSvc();
////		prodSvc.setMerkRepo(merkRepo);
////		System.out.println("POST CONSTRUCT IS CALLED");
////	}
//	
//	@Before
//	public void setup() {
////		Merk merk = new Merk("Jambon");
////		Mockito.when(merkRepo.findByName("Jambon")).thenReturn(merk);
////		Mockito.when(Mockito.any(Merk.class)).thenReturn((Merk)AdditionalAnswers.returnsFirstArg());
//		prodSvc = new ProductSvc();
//	}
//	
//	@Test
//	public void findMerkByName() {
//		prodSvc.setMerkRepo(merkRepo);
//
//		Merk merk = prodSvc.findMerkByName("Bintang");
//		assertNotNull(merk);
//	}
////	
//	@Test
//	public void findAllMerks() {
//		prodSvc.setMerkRepo(merkRepo);
//
//		List<Merk> merks = prodSvc.findAllMerks();
//		assertNotNull(merks);
//		assertTrue(merks.size() > 0);
//	}
//	
//	@Test
//	public void addMerk() {
//		prodSvc.setMerkRepo(merkRepo);
//		
//		Merk merk = new Merk("Chippo");
//		merk.setManufacturerName("Mano");
//		merk.setDesc("Desco");
//		
//		prodSvc.addMerk(merk);
//		
//		Merk m = prodSvc.findMerkByName("Chippo");
//		assertNotNull(m);
//		assertEquals("Chippo", m.getName());
//		assertEquals("Mano", m.getManufacturerName());
//	}
//	
//}
