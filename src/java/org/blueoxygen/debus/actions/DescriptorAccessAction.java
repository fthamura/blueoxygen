package org.blueoxygen.debus.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.debus.DescriptorAccess;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

@Validation
public class DescriptorAccessAction extends CimandeAction {
	private DescriptorAccess dra = new DescriptorAccess();
	private List<DescriptorAccess> mras = new ArrayList<DescriptorAccess>();
	private Descriptor descriptor = new Descriptor();
	private Role role = new Role();

	public String execute() {
		if (getDra().getId() != null
				&& !"".equalsIgnoreCase(getDra().getId().trim())) {
			setDra((DescriptorAccess) manager.getById(DescriptorAccess.class,
					getDra().getId()));
		}
		return SUCCESS;
	}

	public String save() {
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())
				&& getRole().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId())) {
			setDescriptor((Descriptor) manager.getById(Descriptor.class,
					getDescriptor().getId()));
			setRole((Role) manager.getById(Role.class, getRole().getId()));
			getDra().setDescriptor(getDescriptor());
			getDra().setRole(getRole());
			manager.save(getDra());
		}
		return execute();
	}

	@Validations(requiredStrings = { @RequiredStringValidator(fieldName = "message", message = "Please select before deleting") })
	public String delete() {
		if (getDra().getId() != null
				&& !"".equalsIgnoreCase(getDra().getId().trim())) {
			setDra((DescriptorAccess) manager.getById(DescriptorAccess.class,
					getDra().getId()));
			manager.remove(getDra());
		}
		return SUCCESS;
	}

	public DescriptorAccess getDra() {
		return dra;
	}

	public void setDra(DescriptorAccess dra) {
		this.dra = dra;
	}

	public List<DescriptorAccess> getMras() {
		return mras;
	}

	public void setMras(List<DescriptorAccess> mras) {
		this.mras = mras;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}
