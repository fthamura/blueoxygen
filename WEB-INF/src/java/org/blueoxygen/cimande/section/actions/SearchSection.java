/*
 * Created on Aug 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.section.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;

import org.blueoxygen.cimande.section.Section;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;


/**
 * @author dwi miyanto [ mee_andto@yahoo.com ]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class SearchSection extends SectionForm implements HibernateSessionFactoryAware{
	private HibernateSessionFactory hsf;
	private Session sess;
	private List sections = new ArrayList();

	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 20;
	private String orderBy = "code";
	private int resultRows;


	protected Descriptor sectionDescriptor = new Descriptor();
	private String descriptor_id="";

	public String execute(){
	try
		{
	
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Section.class);
			
		sectionDescriptor = (Descriptor)pm.getById(Descriptor.class,getDescriptor_id());
			
			
			if (!getId().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("id", "%" + getId() + "%"));
			}
			if (!getCode().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("code", "%" + getCode() + "%"));
			}
			if (!getDescription().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("description", "%" + getDescription() + "%"));
			}
			if (!getUrl_section().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("url_section", "%" + getUrl_section() + "%"));
			}

			if (!getDescriptor_id().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("sectionDescriptor.id", "%" + getDescriptor_id() + "%"));
			}
			
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}
			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			sections = crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage + 1;
			
			hsf.endSession(sess);
			return SUCCESS;
			
		} catch (HibernateException e)
		{
			return ERROR;
		} catch (SQLException e)
		{
			return ERROR;
		}finally {
			try {
				hsf.closeSession(sess);
			} catch (HibernateException e1) {
				return ERROR;
			} catch (SQLException e1) {
				return ERROR;
			}
		}
	}

	
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
		
	}
	public List getSections() {
		return sections;
	}


	public void setSections(List sections) {
		this.sections = sections;
	}


	public Descriptor getSectionDescriptor() {
		return sectionDescriptor;
	}


	public void setSectionDescriptor(Descriptor sectionDescriptor) {
		this.sectionDescriptor = sectionDescriptor;
	}


	public String getDescriptor_id() {
		return descriptor_id;
	}


	public void setDescriptor_id(String descriptor_id) {
		this.descriptor_id = descriptor_id;
	}


	public int getCurrPage() {
		return currPage;
	}


	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}


	public int getMaxPage() {
		return maxPage;
	}


	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}


	public int getMaxRowPerPage() {
		return maxRowPerPage;
	}


	public void setMaxRowPerPage(int maxRowPerPage) {
		this.maxRowPerPage = maxRowPerPage;
	}


	public int getNextPage() {
		return nextPage;
	}


	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}


	public String getOrderBy() {
		return orderBy;
	}


	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}


	public int getPrevPage() {
		return prevPage;
	}


	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}


	public int getResultRows() {
		return resultRows;
	}


	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}


	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}

	

}
