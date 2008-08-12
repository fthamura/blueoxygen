package org.blueoxygen.debus.actions;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.debus.ActionType;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;


public class ActionTypeAction extends CimandeAction {
	private ActionType actionType = new ActionType();
	private List<ActionType> actionTypes = new ArrayList<ActionType>();

	@Validations
	public String execute() {
		if (getActionType().getId() != null
				&& !"".equalsIgnoreCase(getActionType().getId().trim())) {
			setActionType((ActionType) manager.getById(ActionType.class,
					getActionType().getId()));
		}
		return SUCCESS;
	}

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "actionType.name", message = "Name is required"),
			@RequiredStringValidator(fieldName = "actionType.descriptor", message = "Descriptor is required") })
	public String save() {
		getActionType().setLogInformation(
				new LogInformation(getCurrentUser().getId(), 1));
		manager.save(getActionType());
		return execute();
	}

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "actionType.name", message = "Name is required"),
			@RequiredStringValidator(fieldName = "actionType.descriptor", message = "Descriptor is required") })
	public String update() {
		if (getActionType().getId() != null
				&& !"".equalsIgnoreCase(getActionType().getId().trim())) {
			ActionType temp = getActionType();
			setActionType((ActionType) manager.getById(ActionType.class, temp
					.getId()));
			try {
				PropertyUtils.copyProperties(getActionType(), temp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			getActionType().setLogInformation(
					new LogInformation(getActionType().getLogInformation(),
							getCurrentUser().getId(), 1));
			manager.save(getActionType());
		}
		return execute();
	}
	
	public String search(){
		setActionTypes(manager.findAllSorted(ActionType.class, "name"));
		return execute();
	}
	
	public String delete(){
		if (getActionType().getId() != null
				&& !"".equalsIgnoreCase(getActionType().getId().trim())) {
			setActionType((ActionType) manager.getById(ActionType.class,
					getActionType().getId()));
			manager.remove(getActionType());
		}
		return SUCCESS;
	}

	public ActionType getActionType() {
		return actionType;
	}

	public void setActionType(ActionType actionType) {
		this.actionType = actionType;
	}

	public List<ActionType> getActionTypes() {
		return actionTypes;
	}

	public void setActionTypes(List<ActionType> actionTypes) {
		this.actionTypes = actionTypes;
	}
}
