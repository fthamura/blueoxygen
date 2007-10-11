package org.blueoxygen.cimande.gx.db;

import java.util.List;

import org.blueoxygen.cimande.gx.entity.GXColumn;
import org.blueoxygen.cimande.gx.entity.GXRecord;
import org.blueoxygen.cimande.gx.entity.GXRow;
import org.blueoxygen.cimande.gx.entity.GXTable;

public interface GXDBAccessor {
	public GXTable saveTable(GXTable table);
	public List<GXTable> findAllActiveTable();
	public GXTable addColumn(GXTable table, GXColumn column);
	public GXTable deleteColumn(GXTable table, GXColumn column);
	public GXRow insertRow(GXTable table, GXRecord[] data);
	public boolean deleteRow(GXRow row);
}
