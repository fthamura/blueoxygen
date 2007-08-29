/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.actions.menu;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import java.util.ArrayList;
import java.util.List;

/**
 * A category.
 * @hibernate.class table="CATEGORIES" proxy="org.petsoar.categories.Category"
 */
public class Category {

    private long id;
    private String name;
    private String image;
    private Category parent;
    private List categories = new ArrayList();
 
    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }

    /**
     * @hibernate.id column="CATID" generator-class="increment" unsaved-value="0"
     */
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    /**
     * The parent category of this category.
     * @hibernate.many-to-one cascade="none" column="PARENTID"
     */
    public Category getParent() {
        return parent;
    }

    public void setParent(Category category) {
        this.parent = category;
    }

    /**
     * Name of category
     * @hibernate.property column="NAME"
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * The path to the image.
     * @hibernate.property column="IMAGE"
     */
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @hibernate.bag table="CATEGORY" lazy="true" cascade="delete" inverse="true"
     * @hibernate.collection-one-to-many class="org.petsoar.categories.Category"
     * @hibernate.collection-key column="PARENTID"
     */
    public List getCategories() {
        return categories;
    }

    public void setCategories(List categories) {
        this.categories = categories;
    }

    public void addCategory(Category category) {
        getCategories().add(category);
    }

    public void removeCategory(Category category) {
        getCategories().remove(category);
    }

    public boolean equals(Object obj) {
        // custom equalsbuilder used (instead of using reflection) as cyclical dependency
        // causes stack overflow.
        if (!(obj instanceof Category)) {
            return false;
        }

        Category other = (Category) obj;

        return new EqualsBuilder().append(id, other.id).append(name, other.name)
                .isEquals();
    }

    public int hashCode() {
        // custom hashcodebuilder used (instead of using reflection) as cyclical dependency
        // causes stack overflow.
        return new HashCodeBuilder(17, 37).append(id).toHashCode();
    }

    public String toString() {
        // custom tostringbuilder used (instead of using reflection) as cyclical dependency
        // causes stack overflow.
        return new ToStringBuilder(this).append("id", id).append("name", name)
                .toString();
    }
}
