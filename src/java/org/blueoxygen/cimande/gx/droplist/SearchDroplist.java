package org.blueoxygen.cimande.gx.droplist;

import java.sql.SQLException;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GXDroplistName;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;

public class SearchDroplist extends DroplistForm implements HibernateSessionFactoryAware {
	private HibernateSessionFactory hsf;
	private Session sess;
	
	private int maxPage, currPage, nextPage, prevPage = 0;
	private int maxRowPerPage = 10;
	private String orderBy = "logInformation.createDate";
	private int resultRows;
	
	public String execute(){
		sess = hsf.createSession();
		Criteria crit = sess.createCriteria(GXDroplistName.class);
		if(getName().getName() != null && !"".equalsIgnoreCase(getName().getName())) {
			crit.add(Expression.like("name","%"+getName().getName()+"%"));
		}
		if(getName().getDescription() != null && !"".equalsIgnoreCase(getName().getDescription())) {
			crit.add(Expression.like("description","%"+getName().getDescription()+"%"));	
		}
		if(getParent().getId() != null && !"".equalsIgnoreCase(getParent().getId())){
			crit.add(Expression.like("parent.id", "%"+getParent().getId()+"%"));
		}			
		resultRows = crit.list().size();
		maxPage = resultRows / maxRowPerPage;
		prevPage = currPage - 1;
		nextPage = currPage + 1;
		if(resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
		setNames((List<GXDroplistName>)crit.addOrder(Order.asc(orderBy))
				.setFirstResult(currPage*maxRowPerPage)
				.setMaxResults(maxRowPerPage)
				.list());
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

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public int getResultRows() {
		return resultRows;
	}

	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}

}
