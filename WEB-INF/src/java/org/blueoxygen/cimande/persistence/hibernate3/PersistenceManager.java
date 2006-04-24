/*
 * Created on Oct 26, 2005
 *
 * This file is a property of PT Francha Indomanakon
 * Any use or distribution of this file, in any form, source or
 * binary form is not allowed without written permittion from PT Francha Indomanakon.
 * 
 */
package org.blueoxygen.cimande.persistence.hibernate3;

import org.hibernate.Session;

public interface PersistenceManager {
	Session getSession();
	void begin();
	void commit();
	void rollback();
}
