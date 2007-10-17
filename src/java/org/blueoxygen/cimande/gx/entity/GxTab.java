package org.blueoxygen.cimande.gx.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;


/**
 * @author MeiyMeiy
 * @hibernate.class table="tab"
 */
@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_form_tab")
public class GxTab extends DefaultPersistent {

	private String name;
	private String description;
	private int sequence;
	private int singleRowLayoutFlag;
	private GxWindow window;
	private GxTable table;
	private GxDroplistValue process; 
	private List<GxField> fields = new ArrayList<GxField>();
//	private String result;
	
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

	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@ManyToOne
	public GxWindow getWindow() {
		return window;
	}
	public void setWindow(GxWindow window) {
		this.window = window;
	}
	@ManyToOne
	public GxTable getTable() {
		return table;
	}
	public void setTable(GxTable table) {
		this.table = table;
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
	 * @return the singleRowLayoutFlag
	 */
	@Column(name="single_row_layout_flag")
	public int getSingleRowLayoutFlag() {
		return singleRowLayoutFlag;
	}
	/**
	 * @param singleRowLayoutFlag the singleRowLayoutFlag to set
	 */
	public void setSingleRowLayoutFlag(int singleRowLayoutFlag) {
		this.singleRowLayoutFlag = singleRowLayoutFlag;
	}
	/**
	 * @return the process
	 */
	@ManyToOne
	public GxDroplistValue getProcess() {
		return process;
	}
	/**
	 * @param process the process to set
	 */
	public void setProcess(GxDroplistValue process) {
		this.process = process;
	}
	/**
	 * @return the fields
	 */
	@OneToMany(mappedBy="tab")
	public List<GxField> getFields() {
		return fields;
	}
	/**
	 * @param fields the fields to set
	 */
	public void setFields(List<GxField> fields) {
		this.fields = fields;
	}
	
	public String fgenerate(){
		String result = "<form action='saveform.action' method='post'> " 
			+ "<tr bgcolor='#b8dde0'><td colspan='2' align='center'><font size='2'><b>.:: "
			+ getName() +
			" Form ::.</b></font></td></tr>";
			//<tr bgcolor='#ffffff'><td align='center' width='30%'><b>tyas</b></td><td>"
			//+ getName() +"</td><tr>";
	
		return result;
	}

}
