//package sunwell.permaisuri.test.service.inventory;
//
//import static org.junit.Assert.assertEquals;
//
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
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
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
//import sunwell.permaisuri.bus.repository.OnHandStockRepo;
//import sunwell.permaisuri.bus.repository.ProductImageRepo;
//import sunwell.permaisuri.bus.repository.ProductSellPriceRepo;
//import sunwell.permaisuri.bus.repository.SellPriceLevelRepo;
//import sunwell.permaisuri.bus.repository.WarehouseRepo;
//import sunwell.permaisuri.bus.service.InventorySvc;
//import sunwell.permaisuri.bus.service.ProductService;
//import sunwell.permaisuri.bus.service.ProductSvc;
//import sunwell.permaisuri.core.entity.inventory.Item;
//import sunwell.permaisuri.core.entity.inventory.Merk;
//import sunwell.permaisuri.core.entity.warehouse.Gudang;
//import sunwell.permaisuri.core.entity.warehouse.OnHandStock;
//import sunwell.permaisuri.core.entity.warehouse.OnHandStockPK;
//
//@RunWith(SpringRunner.class)
//@ContextConfiguration(classes = {Application.class})
//@DataJpaTest
//@Sql("/sunwell/permaisuri/test/dbp4.sql")
//public class InventorySvcTest {
//	
//	@Autowired
//    private TestEntityManager entityManager;
////	
//	@Autowired
//	private MerkRepo merkRepo;
//	
//	@Autowired
//	private OnHandStockRepo ohRepo;
//	
//	@Autowired
//	private WarehouseRepo wrhRepo;
//	
//	@Autowired
//	private ItemRepo itemRepo;
//	
//	private InventorySvc invSvc;
//	
//	private ProductSvc prodSvc;
//
//	@Before
//	public void setup() {
//		prodSvc = new ProductSvc();
//		invSvc = new InventorySvc();
//	}
//	
//	@Test
//	public void findAllOnHands() {
////		prodSvc.setMerkRepo(merkRepo);
////		invSvc.setProdSvc(prodSvc);
//		invSvc.setOhRepo(ohRepo);
//		Pageable pageable = new PageRequest(0,10);
//		Page<OnHandStock> pageOhs = invSvc.findAllOnHandStock(pageable);
//		List<OnHandStock> listOhs = pageOhs.getContent();
//		assertNotNull(listOhs);
//		System.out.println("SIZE: " + listOhs.size());
//		assertTrue(listOhs.size() > 0);
//	}
//	
//	@Test
//	public void findOnHand() {
////		prodSvc.setMerkRepo(merkRepo);
////		invSvc.setProdSvc(prodSvc);
//		invSvc.setOhRepo(ohRepo);
//		OnHandStock ohs = invSvc.findOnHandStock(new OnHandStockPK(6, 1));
//		assertNotNull(ohs);
//	}
//	
//	@Test
//	public void addOnHand() {
//		prodSvc.setMerkRepo(merkRepo);
//		prodSvc.setItemRepo(itemRepo);
//		invSvc.setOhRepo(ohRepo);
//		invSvc.setWrRepo(wrhRepo);
//		invSvc.setProdSvc(prodSvc);
//		
//		OnHandStock ohs = new OnHandStock(new Item("Tong"), new Gudang("Utama"), 2000);
//		ohs = invSvc.addOnHand(ohs);
//		System.out.println("QTY: " + ohs.getQty());
//		assertNotNull(ohs);
//		assertTrue(ohs.getQty() > 0);
//	}
//
//	
//}
