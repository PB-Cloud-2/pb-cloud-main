//package sunwell.permaisuri.test.repo;
//
//import static org.junit.Assert.assertEquals;
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
//@Sql("/sunwell/permaisuri/test/data-h2.sql")
//public class MerkRepoTest {
//	
//	@Autowired
//    private TestEntityManager entityManager;
//	
//	@Autowired
//	private MerkRepo merkRepo;
//	
//	@Test
//	public void testMerkIsNotNullAndNotZero() {
//		List<Merk> listMerks = merkRepo.findAll();
//	    System.out.println("SIZE: " + listMerks.size());
//	    assertNotNull(listMerks);
//	    assertTrue(listMerks.size() > 0);
//	}
//	
//	@Test
//	public void findMerkByName() {
//		Merk merk = merkRepo.findByName("Bintang");
//	    assertNotNull(merk);
//	    assertEquals("Merk name", merk.getName(), "Bintang");
//	}
//	
//}
