/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.persistence;

import java.util.List;


/**
 * Interface to access persistence.
 *
 * Components requiring access to persistence must implement PersistenceIndexedAware and have the
 * pm passed in.
 */
public interface PersistenceManager {

    /**
     * Saves an object to the persistence. If the object is not yet added to the persistence store it insert it,
     * otherwise the already persisted record is updated.
     */
    void save(Object objectToSave);

    /**
     * Remove object from persistence.
     */
    void remove(Object objectToRemove);

    /**
     * Look up an object by id.
     */
    Object getById(Class type, long id);

    /**
     * Look up an object by primary key.
     */
    Object getByUniqueField(Class type, Object pk, String fieldName);

    /**
     * Find all objects currently persisted of a particular type.
     */
    List findAll(Class type);

    /**
     * Find all objects currently persisted of a particular type and sort results by named property.
     */
    List findAllSorted(Class type, String sortProperty);
    List findAllSortedDirected(Class type, String sortField, String direction);
    

    /**
     * Find all objects according to the specified query. The <code>parameters</code> parameter is an array of query
     * parameters. The <code>parameter_types</code> parameter is an array of the Classes of the parameters. These two
     * arrays should have the same length.
     * @deprecated
     */
    List find(String query, Object[] parameters, Class[] parameter_types);
    List getList(String query, Object[] parameters, Class[] parameter_types);
	/**
	 * @param class1
	 * @param string
	 * @return
	 */
	Object getById(Class aClass, String id);
	
	
	
}
