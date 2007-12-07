package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistence;

/**
 * @author MeiyMeiy
 * 
 */
@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_form_field")
public class GxField extends DefaultPersistence {
	private String name;
	private String description;
	private int displayedFlag;
	private int displayLength;
	private int sequence;
	private GxTab tab;
	private GxColumn column;
	private GxDroplistValue entityType;
	
	/**
	 * @return Returns the name.
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
	@JoinColumn(name="tab_id")
	public GxTab getTab() {
		return tab;
	}
	/**
	 * @param tab the tab to set
	 */
	public void setTab(GxTab tab) {
		this.tab = tab;
	}
	/**
	 * @return the column
	 */
	@ManyToOne
	public GxColumn getColumn() {
		return column;
	}
	/**
	 * @param column the column to set
	 */
	public void setColumn(GxColumn column) {
		this.column = column;
	}
	/**
	 * @return the displayedFlag
	 */
	@Column(name="displayed_flag")
	public int getDisplayedFlag() {
		return displayedFlag;
	}
	/**
	 * @param displayedFlag the displayedFlag to set
	 */
	public void setDisplayedFlag(int displayedFlag) {
		this.displayedFlag = displayedFlag;
	}
	/**
	 * @return the displayLength
	 */
	@Column(name="displayed_length")
	public int getDisplayLength() {
		return displayLength;
	}
	/**
	 * @param displayLength the displayLength to set
	 */
	public void setDisplayLength(int displayLength) {
		this.displayLength = displayLength;
	}
	/**
	 * @return the sequence
	 */
	public int getSequence() {
		return sequence;
	}
	/**
	 * @param sequence the sequence to set
	 */
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	/**
	 * @return the entityType
	 */
	@ManyToOne
	@JoinColumn(name="entity_type_id")
	public GxDroplistValue getEntityType() {
		return entityType;
	}
	/**
	 * @param entityType the entityType to set
	 */
	public void setEntityType(GxDroplistValue entityType) {
		this.entityType = entityType;
	}
	
	@Transient
	public String generate(){
		String result="";
		//if(getType().getValue().equalsIgnoreCase("text")){
//		if(getType().getValue().equalsIgnoreCase("text")){
//			result += "<input name='"+ getName() + "' type='" + getType().getValue() + "' value='"+ getValue() +"' size='"+ getSize() +"' maxlength='"+ getMaxlength() + "'>";
//		}
//		if(getType().getValue().equalsIgnoreCase("textarea")){
//			result += "<textarea name='"+ getName() + "' rows='" + getRows() + "' cols='" + getCols() + "'></textarea>";
//		}
//		if(getType().getValue().equalsIgnoreCase("submit")){
//			result += "<input type='submit' value='"+ getDescription() + "'>";
//		}
//		if(getType().getValue().equalsIgnoreCase("separator")){
//			result +="<tr bgcolor='#CFE9EB'><td align='center' colspan='2'><font size='2'><b>" + getName() + "</b><font></td></tr>";
//		}
//		if(getType().getValue().equalsIgnoreCase("calendar")){
//			result +="<input name='"+ getName() +"' type='textfield' id='f_date_a' size='20' readonly='1' onfocus='this.blur()'/><img src='../../jscript/jscalendar-1.0/img.gif' id='f_trigger_"+ getDateid() +"' style='cursor: pointer; border: ipx solid red;' tittle='tiazdate' onmouseover='this.style.background='red';' onmouseout='this.style.background='white'' /></td>";
//		}
//		if(getType().getValue().equals(1)){
//			result +="<select name='"+getName() +"><option value=""></option></select>";
//		}
		return result;
	}
	
	
}
