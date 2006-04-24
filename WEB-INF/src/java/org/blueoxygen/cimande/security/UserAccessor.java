/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.security;


public interface UserAccessor {
    boolean authenticate(String username, String password);

    void signup(User user);

    User getUser(String username);
    
    User getUserName(String username);
    
    User getById(String userId);

	void update(User userEdited);
}
