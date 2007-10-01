package org.blueoxygen.cimande.gx2.db;

import java.util.List;

import org.blueoxygen.cimande.gx2.entity.GXColumn;
import org.blueoxygen.cimande.gx2.entity.GXRecord;
import org.blueoxygen.cimande.gx2.entity.GXRow;
import org.blueoxygen.cimande.gx2.entity.GXTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

public class GXDBAccessorImpl implements GXDBAccessor, PersistenceAware {
	private PersistenceManager manager;
	
	public GXDBAccessorImpl(PersistenceManager manager) {
		this.manager = manager;
	}

	public GXTable saveTable(GXTable table){
		manager.save(table);
		return table;
	}
	
	public List<GXTable> findAllActiveTable(){
		return manager.getList("FROM " + GXTable.class.getName() 
				+ " gt WHERE gt.logInformation.activeFlag=1", null, null);
	}
	
	public GXTable addColumn(GXTable table, GXColumn column){
		column.setTable(table);
		manager.save(column);
		return table;
	}
	
	public GXTable deleteColumn(GXTable table, GXColumn column){
		if(!column.equals(table.getPrimary())){
			manager.remove(column);
			table = (GXTable) manager.getById(GXTable.class, table.getId());
		}
		return table;
	}
	
	public GXRow insertRow(GXTable table, GXRecord[] data){
		GXRow row = new GXRow();
		row.setTable(table);
		for(GXRecord rec : data){
			row.getRecords().add(rec);
		}
		return row;
	}
	
	public boolean deleteRow(GXRow row){
		try {
			manager.remove(row);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}
}
