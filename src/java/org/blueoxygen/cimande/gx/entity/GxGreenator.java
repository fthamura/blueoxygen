package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author MeiyMeiy
 * @hibernate.class table="gxgreenator"
 */
@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gxgreenator")
public class GxGreenator extends DefaultPersistent {
	
	private String name;
	private String description;
	private String value;
	private InputType type;
	private String size;
	private String maxlength;
	private Gxform thinGxform;
	private String gxgreenatorName;
	private String rows;
	private String cols;
	private String dateid;
//	public String result;
	private Tab tab;
	private DBColumn column;
	private References references;
	
	/**
	 * @hibernate.many-to-one column="Gxform_id"
	 * @return Returns the thinGxform.
	 * 
	 */
	@ManyToOne
	@JoinColumn(name="Gxform_id")
	public Gxform getThinGxform() {
		return thinGxform;
	}
	/**
	 * @param thinGxform The thinGxform to set.
	 */
	public void setThinGxform(Gxform thinGxform) {
		this.thinGxform = thinGxform;
	}
	
	/**
	 * @return Returns the cols.
	 * @hibernate.property
	 */
	public String getCols() {
		return cols;
	}
	/**
	 * @param cols The cols to set.
	 */
	public void setCols(String cols) {
		this.cols = cols;
	}
	/**
	 * @return Returns the gxgreenatorName.
	 * @hibernate.property
	 */
	public String getGxgreenatorName() {
		return gxgreenatorName;
	}
	/**
	 * @param gxgreenatorName The gxgreenatorName to set.
	 */
	public void setGxgreenatorName(String gxgreenatorName) {
		this.gxgreenatorName = gxgreenatorName;
	}
	/**
	 * @return Returns the maxlength.
	 * @hibernate.property
	 */
	public String getMaxlength() {
		return maxlength;
	}
	/**
	 * @param maxlength The maxlength to set.
	 */
	public void setMaxlength(String maxlength) {
		this.maxlength = maxlength;
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

	/**
	 * @return Returns the rows.
	 * @hibernate.property
	 */
	public String getRows() {
		return rows;
	}
	/**
	 * @param rows The rows to set.
	 */
	public void setRows(String rows) {
		this.rows = rows;
	}
	/**
	 * @return Returns the size.
	 * @hibernate.property
	 */
	public String getSize() {
		return size;
	}
	/**
	 * @param size The size to set.
	 */
	public void setSize(String size) {
		this.size = size;
	}

	/**
	 * @return Returns the type.
	 * @hibernate.property
	 */
	
	public InputType getType() {
		return type;
	}
	/**
	 * @param type The type to set.
	 */
	public void setType(InputType type) {
		this.type = type;
	}
	/**
	 * @return Returns the value.
	 * @hibernate.property
	 */
	public String getValue() {
		return value;
	}
	/**
	 * @param value The value to set.
	 */
	public void setValue(String value) {
		this.value = value;
	}
	/**
	 * @return Returns the dateid.
	 * @hibernate.property
	 */
	public String getDateid() {
		return dateid;
	}
	/**
	 * @param dateid The dateid to set.
	 */
	public void setDateid(String dateid) {
		this.dateid = dateid;
	}
	@Transient
	public String generate(){
		String result="";
		if(getType() == InputType.TEXT){
			result += "<input name='"+ getName() + "' type='" + getType() + "' value='"+ getValue() +"' size='"+ getSize() +"' maxlength='"+ getMaxlength() + "'>";
		}
		if(getType()== InputType.TEXTAREA){
			result += "<textarea name='"+ getName() + "' rows='" + getRows() + "' cols='" + getCols() + "'></textarea>";
		}
		if(getType() == InputType.TEXTFIELD){
			result += "<input name='"+ getName() + "' type='" + getType() + "'>";
		}
		if(getType() == InputType.SEPARATOR){
			result +="<tr bgcolor='#CFE9EB'><td align='center' colspan='2'><font size='2'><b>" + getName() + "</b><font></td></tr>";
		}
		if(getType() == InputType.DATE){
			result +="<input name='"+ getName() +"' type='textfield' id='f_date_a' size='20' readonly='1' onfocus='this.blur()'/><img src='../../jscript/jscalendar-1.0/img.gif' id='f_trigger_"+ getDateid() +"' style='cursor: pointer; border: ipx solid red;' tittle='tiazdate' onmouseover='this.style.background='red';' onmouseout='this.style.background='white'' /></td>";
		}
		return result;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the tab
	 */
	@ManyToOne
	public Tab getTab() {
		return tab;
	}
	/**
	 * @param tab the tab to set
	 */
	public void setTab(Tab tab) {
		this.tab = tab;
	}
	/**
	 * @return the column
	 */
	@ManyToOne
	public DBColumn getColumn() {
		return column;
	}
	/**
	 * @param column the column to set
	 */
	public void setColumn(DBColumn column) {
		this.column = column;
	}
	/**
	 * @return the references
	 */
	@ManyToOne
	public References getReferences() {
		return references;
	}
	/**
	 * @param references the references to set
	 */
	public void setReferences(References references) {
		this.references = references;
	}
	
}
