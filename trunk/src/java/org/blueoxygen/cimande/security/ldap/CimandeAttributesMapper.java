package org.blueoxygen.cimande.security.ldap;

import org.blueoxygen.cimande.security.Name;
import org.blueoxygen.cimande.security.User;
import org.springframework.ldap.ContextMapper;
import org.springframework.ldap.support.DirContextAdapter;

public class CimandeAttributesMapper implements ContextMapper {

	public Object mapFromContext(Object ctx) {
		DirContextAdapter context = (DirContextAdapter) ctx;
		User user = new User();
		user.setName(new Name());
		user.getName().setFirst(context.getStringAttribute("givenname"));
		user.setUsername(context.getStringAttribute("uid"));
		
		return user;
	}
	
}
