package org.itsimulator.germes.app.service.transform.impl;

import org.itsimulator.germes.app.infra.util.ReflectionUtil;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

/**
 * Verifies functionality of the {@link SimpleDTOTransformer}
 * unit
 *
 * @author Morenets
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest(ReflectionUtil.class)
public class CachedFieldProviderTest {
	private FieldProvider provider;

	@Before
	public void setup() {
		provider = new CachedFieldProvider();
	}

	@Test
	public void testGetFieldNamesSuccess() {
		List<String> fields = provider.getFieldNames(Source.class, Destination.class);
		assertFalse(fields.isEmpty());
		assertTrue(fields.contains("value"));
	}

	@Test
	public void testGetFieldNamesCachedSuccess() {
		List<String> fields = provider.getFieldNames(Source.class, Destination.class);
		List<String> fields2 = provider.getFieldNames(Source.class, Destination.class);
		assertFalse(fields.isEmpty());
		assertEquals(fields, fields2);
	}

	@Test
	public void testGetFieldNamesAreCached() {
		PowerMockito.mockStatic(ReflectionUtil.class);
		when(ReflectionUtil.findSimilarFields(Source.class, Destination.class)).thenReturn(Collections.emptyList());

		List<String> fields = provider.getFieldNames(Source.class, Destination.class);
		assertTrue(fields.isEmpty());

	}
}

class Source {
	int value;
}

class Destination {
	int value;
}