package org.blueoxygen.cimande.gx.gxform.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxGreenator;
import org.blueoxygen.cimande.gx.entity.Gxform;

public class DeleteGxform extends GxformForm{
	private String confirm = "";
	protected Gxform gxform = new Gxform();
	protected List<GxGreenator> gxgreenators = new ArrayList();
	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					gxform = (Gxform)manager.getById(Gxform.class, getId());
					String query = "FROM "+ GxGreenator.class.getName() +" AS tc WHERE tc.thinGxform.id='"+ gxform.getId()+"'";
					gxgreenators = (ArrayList<GxGreenator>)manager.getList(query, null, null);
					for(GxGreenator tf:gxgreenators){
						manager.remove(tf);
					}
					manager.remove(gxform);
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
	 * @return Returns the gxform.
	 */
	public Gxform getGxform() {
		return gxform;
	}

	/**
	 * @param gxform The gxform to set.
	 */
	public void setGxform(Gxform gxform) {
		this.gxform = gxform;
	}

	/**
	 * @return Returns the gxgreenators.
	 */
	public List<GxGreenator> getGxgreenators() {
		return gxgreenators;
	}

	/**
	 * @param gxgreenators The gxgreenators to set.
	 */
	public void setGxgreenators(List<GxGreenator> gxgreenators) {
		this.gxgreenators = gxgreenators;
	}


}
