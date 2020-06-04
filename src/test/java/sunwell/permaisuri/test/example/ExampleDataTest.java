package sunwell.permaisuri.test.example;
//package sunwell.permaisuri.test;
//
//import static org.junit.Assert.assertNotNull;
//import static org.junit.Assert.assertTrue;
//
//import java.util.List;
//
//import org.junit.BeforeClass;
//import org.junit.FixMethodOrder;
//import org.junit.Ignore;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.junit.runners.MethodSorters;
//import org.junit.runners.Parameterized.Parameter;
//import org.junit.runners.Parameterized.Parameters;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
//import org.springframework.test.context.jdbc.Sql;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import sunwell.permaisuri.bus.repository.MerkRepo;
//import sunwell.permaisuri.core.entity.inventory.Merk;
//
//@RunWith(SpringRunner.class)
//@DataJpaTest
//@Sql("data-h2.sql")
////@FixMethodOrder(MethodSorters.NAME_ASCENDING)
//public class ExampleDataTest {
//	
//	@Autowired
//    private TestEntityManager entityManager;
//	
//	@Autowired
//	private MerkRepo merkRepo;
//	
////	@Parameter
////	public String name;
////	
////	@Parameter 
////	String expected;
//	
//	
//	@BeforeClass
//	public static void setUp() {
////		System.out.println("Before class is called");
////		Merk defMerk = new Merk();
////		defMerk.setDesc("Mamo");
////		defMerk.setManufacturerName("Manu");
////		defMerk.setName("Merk");
////		
////		entityManager.persist(defMerk);
////		
////		defMerk = new Merk();
////		defMerk.setDesc("MMM");
////		defMerk.setManufacturerName("Mamoth");
////		defMerk.setName("Berg");
////		
////		entityManager.persist(defMerk);
////		
////		defMerk = new Merk();
////		defMerk.setDesc("NNN");
////		defMerk.setManufacturerName("NOC");
////		defMerk.setName("Mock");
////		
////		entityManager.persist(defMerk);
////		
////		entityManager.flush();
//	}
//	
////	@Parameters
////	public String[] getSearchData() {
////		return new String[] {"Merk", "Berg", "Mock"};
////	}
//	
//	@Test
//	public void testMerkIsNotNullAndNotZero() {
//		List<Merk> listMerks = merkRepo.findAll();
//	    System.out.println("SIZE: " + listMerks.size());
//	    assertNotNull(listMerks);
//	    assertTrue(listMerks.size() > 0);
//	}
//	
////	@Ignore
////	@Test
////	public void whenFindByName_thenReturnEmployee() {
////	    // given
//////	    Merk defMerk = new Merk();
//////	    defMerk.setDesc("Mamo");
//////	    defMerk.setManufacturerName("Manu");
//////	    defMerk.setName("Baru");
//////	    entityManager.persist(defMerk);
//////	    entityManager.flush();
//////	    
////	    List<Merk> listMerks = merkRepo.findAll();
////	    System.out.println("SIZE: " + listMerks.size());
////	 
////	    // when
////	    Merk found = merkRepo.findByName("Merk");
////	 
////	    // then
////	    assertNotNull(found);
////	}
//	
////	@Test
////	public void znext() {
////	    // given
//////	    Merk defMerk = new Merk();
//////	    defMerk.setDesc("Mamo");
//////	    defMerk.setManufacturerName("Manu");
//////	    defMerk.setName("Merk");
//////	    entityManager.persist(defMerk);
//////	    entityManager.flush();
////	    
////	    List<Merk> listMerks = merkRepo.findAll();
////	    System.out.println("SIZE: " + listMerks.size());
////	 
////	    // when
////	    Merk found = merkRepo.findByName("Merk");
////	 
////	    // then
////	    assertNotNull(found);
////	}
//}
