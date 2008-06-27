package org.blueoxygen.debus.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.debus.PermissionType;

import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

@Validation
public class PermissionTypeAction extends CimandeAction {
	private PermissionType permissionType;
	private List<PermissionType> permissionTypes = new ArrayList<PermissionType>();

	public String execute() {
		if(getPermissionType() != null && !"".equalsIgnoreCase(getPermissionType().getId())){
			setPermissionType((PermissionType) manager.getById(PermissionType.class, getPermissionType().getId()));
		}
		return SUCCESS;
	}

	@Validations(
			intRangeFields = {
					@IntRangeFieldValidator(fieldName = "permissionType.createFlag", message = "Not valid value", min = "0", max = "1"),
					@IntRangeFieldValidator(fieldName = "permissionType.readFlag", message = "Not valid value", min = "0", max = "1"),
					@IntRangeFieldValidator(fieldName = "permissionType.updateFlag", message = "Not valid value", min = "0", max = "1"),
					@IntRangeFieldValidator(fieldName = "permissionType.deleteFlag", message = "Not valid value", min = "0", max = "1")},
			requiredStrings = {@RequiredStringValidator(fieldName="permissionType.name", message="Name is required")})
	public String save(){
		manager.save(getPermissionType());
		return execute();
	}

	public String delete(){
		if(getPermissionType() != null && !"".equalsIgnoreCase(getPermissionType().getId())){
			setPermissionType((PermissionType) manager.getById(PermissionType.class, getPermissionType().getId()));
			manager.remove(getPermissionType());
		}
		return SUCCESS;
	}
	
	public String search(){
		setPermissionTypes(manager.findAllSorted(PermissionType.class, "name"));
		return SUCCESS;
	}
	
	public PermissionType getPermissionType() {
		return permissionType;
	}

	public void setPermissionType(PermissionType permissionType) {
		this.permissionType = permissionType;
	}

	public List<PermissionType> getPermissionTypes() {
		return permissionTypes;
	}

	public void setPermissionTypes(List<PermissionType> permissionTypes) {
		this.permissionTypes = permissionTypes;
	}
}
