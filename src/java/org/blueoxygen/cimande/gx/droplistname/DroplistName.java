package org.blueoxygen.cimande.gx.droplistname;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author anja
 *
 */
@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_droplist_name")
public class DroplistName extends DefaultPersistent{
	  
	  private String name;
	  private String description;
	  private DroplistName parent;

	  @Column
	  public String getDescription() {
	    return description;
	  }

	  public void setDescription(String description) {
	    this.description = description;
	  }

	  
	  @Column
	  public String getName() {
	    return name;
	  }

	  public void setName(String name) {
	    this.name = name;
	  }
	  
	  @ManyToOne()
	  @Column(name="parent_id")
	  public DroplistName getParent() {
		return parent;
	}	
	  public void setParent(DroplistName parent) {
		this.parent = parent;
	}
	  @Transient
	  public List getChild(PersistenceManager manager, String id) {
		List child = new ArrayList();
		child = manager.getList(" FROM "+DroplistName.class.getSimpleName()+" as tm where tm.parent.id='"+id+"'", null, null);
		return child;
	}
	  
}