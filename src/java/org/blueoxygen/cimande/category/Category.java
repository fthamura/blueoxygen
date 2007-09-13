/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.category;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.descriptors.Descriptor;

/**
 * @author dwimiyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="category"
 */
@Entity()
@Table(name="category")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Category extends DefaultPersistent{
	
	private String code;
	private String description;
	private String url_category_image;

	private List<Category> categories;
	private Category parentCategory;

	private Descriptor categoryDescriptor;
	
	/**
	 * @hibernate.many-to-one column="descriptor_id"
	 * @return Returns the categoryDescriptor.
	 */
	@ManyToOne
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
	@ManyToOne
	@JoinColumn(name="iparentcode")
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
	@OneToMany(mappedBy="parentCategory", cascade={CascadeType.ALL}, fetch=FetchType.EAGER)
	public List<Category> getCategories() {
		return categories;
	}
	/**
	 * @param categories The categories to set.
	 */
	public void setCategories(List<Category> categories) {
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
