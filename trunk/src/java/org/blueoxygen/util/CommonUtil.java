/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.util;

import java.util.*;

/**
 * CommonUtil class for common/general purpose
 *
 * @author Budi Hidayat <br>
 * <a href="mailto:budi@intercitra.com">budi@intercitra.com</a>
 */
public class CommonUtil
{
    /** */
    public static String s_BUNDLE_BASENAME = "default";
    
    /** */
    public static String 
        getText(String s)
    {
        return ResourceBundle.getBundle(s_BUNDLE_BASENAME).getString(s);
    }
    
    /** */
    public static String 
        generateUnique()
    {
        String s = Long.toHexString((new Date()).getTime()) + 
                   Long.toHexString((new Random()).nextLong());
        return s.toUpperCase();
    }
    
    private CommonUtil() { }
}