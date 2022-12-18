package com.skilldistillery.monarch;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.monarch.entities.Monarch;

@SpringBootTest
class MariposaApplicationTests {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Monarch monarch;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMonarch");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		monarch = em.find(Monarch.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		monarch = null;
	}

	@Test
	void test_Monarch_entity_mapping() {
		assertNotNull(monarch);
		assertEquals("Abilene", monarch.getCity());
		assertEquals("TX", monarch.getState());
		assertEquals("Perched on flower", monarch.getDescription());
		assertEquals(1, monarch.getAmount());
		
		}
	
	@Test
	void test_LatLong_entity() {
		assertNotNull(monarch);
		assertEquals(29.5, monarch.getLatitude());
		assertEquals(-95.4, monarch.getLongitude());
	}
	
}
