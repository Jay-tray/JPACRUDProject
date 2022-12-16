package com.skilldistillery.monarch.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MonarchTest {
	
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
		assertEquals("Boise", monarch.getCity());
		assertEquals("Perched on milkweed", monarch.getDescription());
		}

}
