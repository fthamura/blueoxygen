/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.category;

import java.util.List;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.descriptors.Descriptor;

/**
 * @author dwimiyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="category"
 */
public class Category extends DefaultPersistent{
	
	private String code;
	private String description;
	private String url_category_image;

	private List categories;
	private Category parentCategory;

	private Descriptor categoryDescriptor;
	
	/**
	 * @hibernate.many-to-one column="descriptor_id"
	 * @return Returns the categoryDescriptor.
	 */
	public Descriptor getCategoryDescriptor() {
		return categoryDescriptor;
	}
	/**
	 * @param categoryDescriptor The categoryDescriptor to set.
	 */
	public void setCategoryDescriptor(Descriptor categoryDescriptor) {
		this.categoryDescriptor = categoryDescriptor;
	}
	
	/**
	 * @return Returns the description.
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return Returns the code.
	 * @hibernate.property length="3"
	 */
	public String getCode() {
		return code;
	}
	/**
	 * @param code The code to set.
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return Returns the parentCategory.
	 * @hibernate.many-to-one column="iparentcode"
	 */
	public Category getParentCategory() {
		return parentCategory;
	}
	/**
	 * @param parentCategory The parentCategory to set.
	 */
	public void setParentCategory(Category parentCategory) {
		this.parentCategory = parentCategory;
	}
	/**
	 * @return Returns the categories.
	 * @hibernate.bag table="category" lazy="false" cascade="all" inverse="true"
	 * @hibernate.collection-one-to-many class="org.blueoxygen.cimande.category.Category"
	 * @hibernate.collection-key column="iparentcode"
	 */
	public List getCategories() {
		return categories;
	}
	/**
	 * @param categories The categories to set.
	 */
	public void setCategories(List categories) {
		this.categories = categories;
	}
	
	/**
	 * 
	 * @hibernate.property
	 * 
	 */
	public String getUrl_category_image() {
		return url_category_image;
	}
	public void setUrl_category_image(String url_category_image) {
		this.url_category_image = url_category_image;
	}

	
}
