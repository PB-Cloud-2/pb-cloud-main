package sunwell.permaisuri.ws.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import sunwell.permaisuri.bus.service.ProductService;
import sunwell.permaisuri.core.entity.inventory.ItemCategory;

@Service
public class TestSvc implements TestService
{
	@Autowired
	ProductService ps ;
	
//	public TestSvc() {
//		test();
//	}

	@Override
	@Async
	public void test ()
	{
		System.out.println("Starting async task");
		// TODO Auto-generated method stub
//		List<ItemCategory> listCtgr = ps.findAllCategories();
		try {
			Thread.sleep(10000);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("Async task finished");
	}
	
}
