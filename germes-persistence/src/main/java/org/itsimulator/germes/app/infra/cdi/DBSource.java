package org.itsimulator.germes.app.infra.cdi;

import javax.inject.Qualifier;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Qualifier
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER})
/**
 * This annotation suggests CDI container(for example, Weld) to inject only db-related
 * dependencies
 *
 */
public @interface DBSource {

}

