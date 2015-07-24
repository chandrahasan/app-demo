/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to use Celerio within your company? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Template pack-backend-jpa:src/main/java/project/dao/support/PropertySelector.p.vm.java
 */
package com.app.demo.dao.support;

import static com.google.common.collect.Lists.newArrayList;

import java.io.Serializable;
import java.util.List;

import javax.persistence.metamodel.SingularAttribute;

/**
 * Used to construct OR predicate for a property value. In other words you can search
 * all entities E having a given property set to one of the selected values.
 */
public class PropertySelector<E, F> implements Serializable {
    private static final long serialVersionUID = 1L;

    private final SingularAttribute<E, F> field;
    private List<F> selected = newArrayList();

    /**
     * @param field the property that should match one of the selected value.
     */
    public PropertySelector(SingularAttribute<E, F> field) {
        this.field = field;
    }

    public SingularAttribute<E, F> getField() {
        return field;
    }

    /**
     * Get the possible candidates for property.
     */
    public List<F> getSelected() {
        return selected;
    }

    /**
     * Set the possible candidates for property.
     */
    public void setSelected(List<F> selected) {
        this.selected = selected;
    }

    public boolean isNotEmpty() {
        return selected != null && !selected.isEmpty();
    }

    public void clearSelected() {
        if (selected != null) {
            selected.clear();
        }
    }

    public boolean isBoolean() {
        return field.getJavaType().isAssignableFrom(Boolean.class);
    }

    /**
     * {@link PropertySelector} builder
     */
    public static <E, F> PropertySelector<E, F> newPropertySelector(SingularAttribute<E, F> field) {
        return new PropertySelector<E, F>(field);
    }
}