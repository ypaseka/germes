package org.itsimulator.germes.app.infra.util;

import org.itsimulator.germes.app.infra.exception.flow.InvalidParameterException;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Verifies functionality of {@link Checks} class
 *
 * @author Stekanov
 *
 */
public class ChecksTest {
	@Test
	public void testCheckParameterGetException() {
		try {
			Checks.checkParameter(false, "test");

            assertTrue(false);
		} catch (Exception ex) {
			assertSame(ex.getClass(), InvalidParameterException.class);
			assertEquals(ex.getMessage(), "test");
		}
	}

	@Test
	public void testCheckParameterNoException() {
		Checks.checkParameter(true, "test");
		assertTrue(true);
	}
}
