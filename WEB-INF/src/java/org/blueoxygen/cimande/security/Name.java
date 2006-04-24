/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.security;

public class Name {
    private String prefix;
    private String first;
    private String middle;
    private String last;

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    /**
     * @hibernate.property column="first_name" length="128"
     */
    public String getFirst() {
        return first;
    }

    public void setFirst(String first) {
        this.first = first;
    }

   
    public String getMiddle() {
        return middle;
    }

    public void setMiddle(String middle) {
        this.middle = middle;
    }

    /**
     * @hibernate.property column="last_name" length="128"
     */
    public String getLast() {
        return last;
    }

    public void setLast(String last) {
        this.last = last;
    }
}
