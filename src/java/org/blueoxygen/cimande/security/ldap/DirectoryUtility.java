package org.blueoxygen.cimande.security.ldap;

import java.io.UnsupportedEncodingException;

public class DirectoryUtility {

	public static byte[] createUnicodePassword(String password) {
		return toUnicodeBytes(doubleQuoteString(password));
	}

	private static byte[] toUnicodeBytes(String str) {
		byte[] unicodeBytes = null;
		try {
			byte[] unicodeBytesWithQuotes = str.getBytes("Unicode");
			unicodeBytes = new byte[unicodeBytesWithQuotes.length - 2];
			System.arraycopy(
					unicodeBytesWithQuotes,
					2,
					unicodeBytes,
					0,
					unicodeBytesWithQuotes.length - 2);
		} catch (UnsupportedEncodingException e) {
			// This should never happen.
			e.printStackTrace();
		}
		return unicodeBytes;
	}

	private static String doubleQuoteString(String str) {
		StringBuffer sb = new StringBuffer();
		sb.append("\"");
		sb.append(str);
		sb.append("\"");
		return sb.toString();
	}
}