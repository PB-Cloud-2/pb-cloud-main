package sunwell.permaisuri.test.controller;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpServletRequest;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.http.MediaType;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

//import sunwell.permaisuri.SecurityConfiguration;
import sunwell.permaisuri.bus.service.InventoryService;
import sunwell.permaisuri.bus.service.ProductService;
import sunwell.permaisuri.bus.service.UserCredSvc;
//import sunwell.permaisuri.config.Application;
import sunwell.permaisuri.core.entity.inventory.Merk;
import sunwell.permaisuri.ws.controller.ProductController;
import sunwell.permaisuri.ws.controller.ServiceUtil;

import static org.mockito.BDDMockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotNull;

import java.util.LinkedList;
import java.util.List;

@RunWith(SpringRunner.class)
//@WebMvcTest(ProductController.class)
@WebMvcTest(controllers= {ProductController.class}, secure=false)
@EnableSpringDataWebSupport
//@AutoConfigureMockMvc(secure=false)
//@ActiveProfiles({""})
//@ContextConfiguration(classes = {Application.class})
//@Import(SecurityConfiguration.class)
public class ProductMVCTest {

	@Autowired
	MockMvc mockMvc;
	
	
//	@Autowired
//	WebSecurityConfigurerAdapter wsc;
	
	@MockBean
	ProductService productService;
	
	@MockBean
	InventoryService invSvc;
    
//	@MockBean
//    ServiceUtil svcUtil;
    
	@MockBean
    ServletContext sCtx;
    
	@MockBean
    MessageSource messageSource;
	
	@MockBean
	UserCredSvc userCredSvc;
    
//	@MockBean
//    HttpServletRequest request;
	
//	@Ignore
	@Test
	public void testPath() throws Exception {
		
		assertNotNull(mockMvc);
		
		System.out.println(mockMvc);
		
		List<Merk> listMerks = new LinkedList<>();
		
		Merk merk = new Merk() ;
		merk.setSystemId(1);
		merk.setName("Samsung");
		merk.setManufacturerName("Korra");
		merk.setDesc("Luar Negeri");
		
		listMerks.add(merk);
		
		merk = new Merk() ;
		merk.setSystemId(2);
		merk.setName("Djarum");
		merk.setManufacturerName("Doin");
		merk.setDesc("Lokal");
		
		listMerks.add(merk);
		
		merk = new Merk() ;
		merk.setSystemId(3);
		merk.setName("Indofood");
		merk.setManufacturerName("Indo");
		merk.setDesc("Nesia");
		
		listMerks.add(merk);
		
		Pageable pageable = new PageRequest(1,10);
		Page<Merk> pages = new PageImpl<>(listMerks, pageable, 2);
				
		given(productService.findAllMerks(any())).willReturn(pages);
		
		mockMvc.perform(get("/resources/merks")
			      .contentType(MediaType.APPLICATION_JSON))
			      .andExpect(status().isOk())
			      .andExpect(jsonPath("$.data[0].name", is("Samsung")));
	}
	
	@org.springframework.boot.test.context.TestConfiguration
    static class TestConfiguration {
  
        @Bean
        public ServiceUtil serviceUtil() {
            return new ServiceUtil();
        }
        
    }
	
}
