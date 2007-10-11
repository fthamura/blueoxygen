package org.blueoxygen.cimande.gx.db.table;

import java.sql.SQLException;
import java.util.ArrayList;

import org.blueoxygen.cimande.gx.entity.GXTable;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


public class SearchTable extends TableForm implements HibernateSessionFactoryAware {
	private HibernateSessionFactory hsf;
	private Session sess;
	private int maxPage = 1; 
	private int currPage = 0;
	private int nextPage; 
	private int prevPage;
	private int maxRowPerPage = 10;
	private String orderBy = "name";
	private int resultRows;
	
	public String execute(){
		sess = hsf.createSession();
		Criteria crit = sess.createCriteria(GXTable.class);
		if (getTable().getName() != null && "".equalsIgnoreCase(getTable().getName())){
			crit.add(Expression.like("name", "%"+getTable().getName()+"%"));
		}
		if (getTable().getDescription() != null && "".equalsIgnoreCase(getTable().getDescription())){
			crit.add(Expression.like("description", "%"+getTable().getDescription()+"%"));
		}
		crit.add(Expression.eq("logInformation.activeFlag", new Integer(1)));
		resultRows = crit.list().size();
		paging();
		
		if(resultRows > 0){
			setTables((ArrayList<GXTable>) crit.addOrder(Order.asc(orderBy))
					.setFirstResult(currPage * maxRowPerPage)
					.setMaxResults(maxRowPerPage)
					.list());
		} else {
			setTables(null);
		}
		
		try {
			hsf.endSession(sess);
			hsf.closeSession(sess);
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	private void paging(){
		if(resultRows > 0){
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
		}
		prevPage = currPage - 1;
		nextPage = currPage + 1;
	}
	
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getMaxRowPerPage() {
		return maxRowPerPage;
	}

	public void setMaxRowPerPage(int maxRowPerPage) {
		this.maxRowPerPage = maxRowPerPage;
	}

	public int getResultRows() {
		return resultRows;
	}

	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}
	
}
