package org.blueoxygen.cimande.gx.db;

import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxColumn;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

public class GXDBAccessorImpl implements GXDBAccessor, PersistenceAware {
	private PersistenceManager manager;
	
	public GXDBAccessorImpl(PersistenceManager manager) {
		this.manager = manager;
	}

	public GxTable saveTable(GxTable table){
		manager.save(table);
		return table;
	}
	
	public List<GxTable> findAllActiveTable(){
		return manager.getList("FROM " + GxTable.class.getName() 
				+ " gt WHERE gt.logInformation.activeFlag=1", null, null);
	}
	
	public GxTable addColumn(GxTable table, GxColumn column){
		column.setTable(table);
		manager.save(column);
		return table;
	}
	
	public GxTable deleteColumn(GxTable table, GxColumn column){
//		if(!column.equals(table.getPrimary())){
			manager.remove(column);
			table = (GxTable) manager.getById(GxTable.class, table.getId());
//		}
		return table;
	}
	
//	public GXRow insertRow(GxTable table, GXRecord[] data){
//		GXRow row = new GXRow();
//		row.setTable(table);
//		for(GXRecord rec : data){
//			row.getRecords().add(rec);
//		}
//		return row;
//	}
	
//	public boolean deleteRow(GXRow row){
//		try {
//			manager.remove(row);
//		} catch (Exception e) {
//			return false;
//		}
//		return true;
//	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}
}
