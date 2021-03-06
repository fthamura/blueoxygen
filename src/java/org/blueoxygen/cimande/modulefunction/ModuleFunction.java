/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.modulefunction;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.descriptors.Descriptor;

/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="module_function"
 */
@Entity()
@Table(name="module_function")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class ModuleFunction extends DefaultPersistence{
	
	private String name;
	private String description;
	private int viewActive;
	private String tableReferences;
	private List<ModuleFunction> moduleFunctions;
	private ModuleFunction moduleFunction;
	private Descriptor moduleDescriptor;
	/**
	 * @hibernate.many-to-one column="descriptor_id"
	 * @return Returns the moduleDescriptor.
	 */
	@ManyToOne
	@JoinColumn(name="descriptor_id")
	public Descriptor getModuleDescriptor() {
		return moduleDescriptor;
	}
	/**
	 * @param moduleDescriptor The moduleDescriptor to set.
	 */
	public void setModuleDescriptor(Descriptor moduleDescriptor) {
		this.moduleDescriptor = moduleDescriptor;
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
	 * @return Returns the name.
	 * @hibernate.property length="128"
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return Returns the tableReferences.
	 * @hibernate.property column="ref_desc"
	 */
	@Column(name="ref_desc")
	public String getTableReferences() {
		return tableReferences;
	}
	/**
	 * @param tableReferences The tableReferences to set.
	 */
	public void setTableReferences(String tableReferences) {
		this.tableReferences = tableReferences;
	}
	/**
	 * @return Returns the viewActive.
	 * @hibernate.property column="viewall_flag" length="1"
	 */
	@Column(name="viewall_flag")
	public int getViewActive() {
		return viewActive;
	}
	/**
	 * @param viewActive The viewActive to set.
	 */
	public void setViewActive(int viewActive) {
		this.viewActive = viewActive;
	}
	/**
	 * @return Returns the moduleFunction.
	 * @hibernate.many-to-one column="iparent"
	 */
	@ManyToOne
	@JoinColumn(name="iparent", nullable=true, updatable = true, insertable = true)
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}
	/**
	 * @param moduleFunction The moduleFunction to set.
	 */
	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}
	/**
	 * @return Returns the moduleFunctions.
	 * @hibernate.bag table="module_function" lazy="false" cascade="all" inverse="true"
	 * @hibernate.collection-one-to-many class="org.blueoxygen.cimande.modulefunction.ModuleFunction"
	 * @hibernate.collection-key column="iparent"
	 */
	@OneToMany(mappedBy="moduleFunction", cascade={CascadeType.ALL}, fetch=FetchType.EAGER)
	public List<ModuleFunction> getModuleFunctions() {
		return moduleFunctions;
	}
	/**
	 * @param moduleFunctions The moduleFunctions to set.
	 */
	public void setModuleFunctions(List<ModuleFunction> moduleFunctions) {
		this.moduleFunctions = moduleFunctions;
	}
	
	
	
	
}
