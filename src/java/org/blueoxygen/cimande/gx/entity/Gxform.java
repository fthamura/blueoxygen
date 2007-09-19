package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;


/**
 * @author MeiyMeiy
 * @hibernate.class table="gxform"
 */
@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gxform")
public class Gxform extends DefaultPersistent {

	private String name;
	private String description;
	private String gxformName;
	private Window window;
	private DBTable table;
//	private String result;
	
	/**
	 * @return Returns the gxformName.
	 * @hibernate.property column="gxformName"
	 */
	@Column(name="gxformname")
	public String getGxformName() {
		return gxformName;
	}
	/**
	 * @param gxformName The gxformName to set.
	 */
	public void setGxformName(String gxformName) {
		this.gxformName = gxformName;
	}
	/**
	 * @return Returns the name.
	 * @hibernate.property
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

	public String fgenerate(){
		
		String result = "<tr bgcolor='#b8dde0'><td colspan='2' align='center'><font size='2'><b>.:: "
			+ getName() +
			" Form ::.</b></font></td></tr>";
			//<tr bgcolor='#ffffff'><td align='center' width='30%'><b>tyas</b></td><td>"
			//+ getName() +"</td><tr>";
	
		return result;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@ManyToOne
	public Window getWindow() {
		return window;
	}
	public void setWindow(Window window) {
		this.window = window;
	}
	@ManyToOne
	public DBTable getTable() {
		return table;
	}
	public void setTable(DBTable table) {
		this.table = table;
	}

}
