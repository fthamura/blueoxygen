package org.blueoxygen.cimande.comment;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

/**
 * 
 * @author kurniawan
 * @hibernate.class table="comment"
 */
@Entity()
@Table(name="comment_manager")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class CommentManager extends DefaultPersistence{
	private String name;
	private String text_comment;
	private String idContent;
	private GxDroplistValue categoryComment;
	
	
	@ManyToOne()
	@JoinColumn(name="category_comment")
	public GxDroplistValue getCategoryComment() {
		return categoryComment;
	}
	public void setCategoryComment(GxDroplistValue categoryComment) {
		this.categoryComment = categoryComment;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(length=1000)
	public String getText_comment() {
		return text_comment;
	}
	public void setText_comment(String text_comment) {
		this.text_comment = text_comment;
	}
	@Column(name="id_content")
	public String getIdContent() {
		return idContent;
	}
	public void setIdContent(String idContent) {
		this.idContent = idContent;
	}
	
}
