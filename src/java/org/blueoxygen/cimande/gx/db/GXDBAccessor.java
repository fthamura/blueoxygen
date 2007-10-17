package org.blueoxygen.cimande.gx.db;

import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxColumn;
import org.blueoxygen.cimande.gx.entity.GxTable;

public interface GXDBAccessor {
	public GxTable saveTable(GxTable table);
	public List<GxTable> findAllActiveTable();
	public GxTable addColumn(GxTable table, GxColumn column);
	public GxTable deleteColumn(GxTable table, GxColumn column);
//	public GXRow insertRow(GxTable table, GXRecord[] data);
//	public boolean deleteRow(GXRow row);
}
