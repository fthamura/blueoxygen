/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.persistence.hibernate3;

public class PersistenceException extends RuntimeException {

    /**
	 * 
	 */
	private static final long serialVersionUID = -5968934818227426465L;

	public PersistenceException(Throwable cause) {
        super(cause);
    }

    public PersistenceException(String msg, Throwable cause) {
        super(msg, cause);
    }
}
