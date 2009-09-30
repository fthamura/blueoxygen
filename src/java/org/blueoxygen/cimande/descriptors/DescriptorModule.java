package org.blueoxygen.cimande.descriptors;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

@Entity()
@Table(name="descriptor_module")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class DescriptorModule extends DefaultPersistence{
	private Descriptor descriptor = new Descriptor();
	private String optionmodule;
	private GxDroplistValue droplistValue;
	
	@ManyToOne()
	@JoinColumn(name="descriptor_id")
	public Descriptor getDescriptor() {
		return descriptor;
	}
	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}
	
	public String getOptionmodule() {
		return optionmodule;
	}
	public void setOptionmodule(String optionmodule) {
		this.optionmodule = optionmodule;
	}
	
	@ManyToOne()
	@JoinColumn(name="drop_list_value")
	public GxDroplistValue getDroplistValue() {
		return droplistValue;
	}
	public void setDroplistValue(GxDroplistValue droplistValue) {
		this.droplistValue = droplistValue;
	}
}
