package org.blueoxygen.cimande.rolesite;

import java.sql.SQLException;

import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.role.Role;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;

public class SearchRoleSite extends RoleSiteForm implements HibernateSessionFactoryAware {
	private HibernateSessionFactory hsf;
	private Session sess;
	private String orderBy = "name";
	public String execute(){
		sess = hsf.createSession();
		Criteria crit = sess.createCriteria(Role.class);

		if (!getRole().getName().equalsIgnoreCase("")) {
			crit.add(Expression.like("name", getRole().getName(), MatchMode.ANYWHERE));
		}
		if (!getRole().getDescription().equalsIgnoreCase("")) {
			crit.add(Expression.like("description", getRole().getDescription(), MatchMode.ANYWHERE));
		}
		setRoles(crit.addOrder(Order.asc(orderBy)).list());
		try {
			hsf.closeSession(sess);
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
}
