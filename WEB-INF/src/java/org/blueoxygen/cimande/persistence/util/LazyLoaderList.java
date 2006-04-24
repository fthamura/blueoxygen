/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.persistence.util;


import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceManager;

public class LazyLoaderList extends ArrayList {
    private List decoratedList;
    private BitSet loadedListBitSet;
    private PersistenceManager persistenceManager;
    private Class type;

    public LazyLoaderList(List decoratedList, PersistenceManager persistenceManager, Class type) {
        this.decoratedList = decoratedList;
        loadedListBitSet = new BitSet(decoratedList.size());
        this.persistenceManager = persistenceManager;
        this.type = type;
    }

    public int size() {
        return decoratedList.size();
    }

    public boolean isEmpty() {
        return decoratedList.isEmpty();
    }

    public Object get(int index) {
        if (loadedListBitSet.get(index) == false) {
            Long id = (Long) decoratedList.get(index);
            Object lazyLoadedObj = persistenceManager.getById(type, id.longValue());

            loadedListBitSet.set(index);
            decoratedList.set(index, lazyLoadedObj);
        }

        return decoratedList.get(index);
    }
}
