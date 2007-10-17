package org.blueoxygen.cimande.gx.tab;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;

public class DeleteGxform extends GxformForm{
	private String confirm = "";
	protected GxTab tab = new GxTab();
	protected List<GxField> gxgreenators = new ArrayList();
	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					tab = (GxTab)manager.getById(GxTab.class, getId());
					String query = "FROM "+ GxField.class.getName() +" AS tc WHERE tc.thinGxform.id='"+ tab.getId()+"'";
					gxgreenators = (ArrayList<GxField>)manager.getList(query, null, null);
					for(GxField tf:gxgreenators){
						manager.remove(tf);
					}
					manager.remove(tab);
					setReport("Delete form success");
				} else {
					setReport("Delete form failed");
				}
			} else if(confirm.equalsIgnoreCase("No")) {
				setReport("Delete form canceled");
			}
		}
		return SUCCESS;
	}
	

	/**
	 * @return Returns the confirm.
	 */
	public String getConfirm() {
		return confirm;
	}

	/**
	 * @param confirm The confirm to set.
	 */
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	/**
	 * @return Returns the tab.
	 */
	public GxTab getGxform() {
		return tab;
	}

	/**
	 * @param tab The tab to set.
	 */
	public void setGxform(GxTab tab) {
		this.tab = tab;
	}

	/**
	 * @return Returns the fields.
	 */
	public List<GxField> getGxgreenators() {
		return gxgreenators;
	}

	/**
	 * @param fields The fields to set.
	 */
	public void setGxgreenators(List<GxField> gxgreenators) {
		this.gxgreenators = gxgreenators;
	}


}
