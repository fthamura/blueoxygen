/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.test;

/**
 * @author Samuel Franklin
 *
 * To change the template for this generated type comment go to
 * Window>Preferences>Java>Code Generation>Code and Comments
 */

import org.apache.oro.text.perl.Perl5Util;
import org.blueoxygen.util.StringUtils;

public class OroTest {

public static void main(String[] args) {

Perl5Util util = new Perl5Util();

System.out.println("Method 1");

String str1=("s/'/\\'/g");
System.out.println("reg ex 1:"+str1);
String str2="Ma'mun";
System.out.println("Before:"+str2);
str2=util.substitute(str1, str2);
System.out.println("After:"+str2);

System.out.println("Method 2");
str1=("s/'/\\\\'/g");
System.out.println("reg ex 2:"+str1);
str2="Ma'mun";
System.out.println("Before:"+str2);
str2=util.substitute(str1, str2);
System.out.println("After:"+str2);

System.out.println("Method 3 -- this is using StringUtils, simpler :)");
StringUtils string = new StringUtils();
str1="Ma'mun";
System.out.println("Before:"+str1);
str2=string.addBackSlashQuote(str1);
System.out.println("The Str:"+str2);

}
}



