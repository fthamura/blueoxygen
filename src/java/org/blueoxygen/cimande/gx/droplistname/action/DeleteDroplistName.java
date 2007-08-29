package org.blueoxygen.cimande.gx.droplistname.action;

import java.util.Iterator;
import java.util.List;

import org.blueoxygen.cimande.gx.droplistname.DroplistName;
import org.blueoxygen.cimande.gx.droplistvalue.DroplistValue;

/**
 * @author anja
 *
 */
public class DeleteDroplistName extends DroplistNameForm {
	
	private String confirm = "";
	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					droplistname = (DroplistName) manager.getById(DroplistName.class, getId());
					droplistnames = manager.getList(" FROM " +DroplistName.class.getSimpleName()+" as gx_droplist_name WHERE gx_droplist_name.parent.id='"+getId()+"'", null, null);
					DroplistName tm;
					for(Object ob : droplistnames) {
						tm = (DroplistName)ob;
						manager.remove(tm);
					}
					List dvs = manager.getList(" FROM " +DroplistValue.class.getName()+" as dv WHERE dv.droplistname.id='"+getId()+"'", null, null);
					DroplistValue dv; 
					for(Object ob : dvs){
						dv = (DroplistValue) ob;
						manager.remove(dv);
					}
					manager.remove(droplistname);
					setReport("Delete droplist success.");
				}else {
					setReport("Delete droplist fail.");
				}
			} else if(confirm.equalsIgnoreCase("No")){
				setReport("Delete droplist canceled.");
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
	
}