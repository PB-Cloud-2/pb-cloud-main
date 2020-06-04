package sunwell.permaisuri.test.example;
//package sunwell.permaisuri.test;
//
//import static org.junit.Assert.assertNotNull;
//
//import org.junit.BeforeClass;
//import org.junit.Ignore;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.junit.runners.Parameterized;
//import org.junit.runners.Parameterized.Parameter;
//import org.junit.runners.Parameterized.Parameters;
//
//import sunwell.permaisuri.ws.controller.ServiceUtil;
//
//@RunWith(Parameterized.class)
//public class UnitTest {
//	
//	static ServiceUtil svcUtil;
//	
//	@Parameter
//	public  String username;
//	
//	@Parameters
//	public static String[] getUsernames() {
//		return new String[] {"John", "David", "Andy"};
//	}
//	
//	@BeforeClass
//	public static void setUp() {
//		svcUtil = new ServiceUtil();
//	}
//	
//	@Ignore
//	@Test
//	public void testJWT() throws Exception {
//		String jwt = svcUtil.getToken(username);
//		assertNotNull(jwt);
//	}
//
//}
