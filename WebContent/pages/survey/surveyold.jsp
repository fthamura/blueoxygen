<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/c" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>Survey</title>
<link rel="stylesheet" type="text/css"
	href="http://www.w3.org/StyleSheets/Core/Modernist"></link>
</head>
<body>
<center><html:form action="/SubmitSurvey.do">
	<table border="1" bordercolor="red" cellpadding="0" cellspacing="0"
		width="100%">
		<tr>
			<td align="center">
			<table width="100%">
				<tr>
					<td><html:img page="/pages/images/sub_top.jpg" /></td>
				</tr>
				<tr>
					<td align="center">
					<table border="0" width="50%">

						<c:choose>
							<c:when test="${surveyType == 'survey1'}">
								<tr>
									<td><b>Medical Conditions</b></td>
								</tr>
								<table width="98%">
									<tr>
										<td colspan="2">This section is about whether you currently
										have any of the medical conditions listed below. Review the
										list and mark yes for the conditions you currently have and no
										for the conditions you do not currently have.</td>
									</tr>
									<tr>
										<td><c:out value="${surveyForm.question0}" /></td>
										<td>No<html:radio name="surveyForm" property="answer0"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer0" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question1}" /></td>
										<td>No<html:radio name="surveyForm" property="answer1"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer1" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question2}" /></td>
										<td>No<html:radio name="surveyForm" property="answer2"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer2" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question3}" /></td>
										<td>No<html:radio name="surveyForm" property="answer3"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer3" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question4}" /></td>
										<td>No<html:radio name="surveyForm" property="answer4"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer4" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question5}" /></td>
										<td>No<html:radio name="surveyForm" property="answer5"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer5" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question6}" /></td>
										<td>No<html:radio name="surveyForm" property="answer6"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer6" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question7}" /></td>
										<td>No<html:radio name="surveyForm" property="answer7"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer7" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question8}" /></td>
										<td>No<html:radio name="surveyForm" property="answer8"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer8" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question9}" /></td>
										<td>No<html:radio name="surveyForm" property="answer9"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer9" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question10}" /></td>
										<td>No<html:radio name="surveyForm" property="answer10"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer10" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question11}" /></td>
										<td>No<html:radio name="surveyForm" property="answer11"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer11" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question12}" /></td>
										<td>No<html:radio name="surveyForm" property="answer12"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer12" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question13}" /></td>
										<td>No<html:radio name="surveyForm" property="answer13"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer13" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question14}" /></td>
										<td>No<html:radio name="surveyForm" property="answer14"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer14" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question15}" /></td>
										<td>No<html:radio name="surveyForm" property="answer15"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer15" value="1" /></td>
									</tr>

									<tr>
										<td colspan="2" align="center"><html:submit /></td>
									</tr>
								</table>
							</c:when>
							<c:when test="${surveyType == 'survey2'}">
								<table width="98%">
									<tr>
										<td colspan="2">The previous survey suggested that you may be
										an At-Risk patient. You can help us determine this by
										answering the following follow-up questions.</td>
									</tr>
									<tr>
										<td><c:out value="${surveyForm.question16}" /></td>
										<td>No<html:radio name="surveyForm" property="answer16"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer16" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question17}" /></td>
										<td>No<html:radio name="surveyForm" property="answer17"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer17" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question18}" /></td>
										<td>No<html:radio name="surveyForm" property="answer18"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer18" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question19}" /></td>
										<td>No<html:radio name="surveyForm" property="answer19"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer19" value="1" /></td>
									</tr>

									<tr>
										<td><c:out value="${surveyForm.question20}" /></td>
										<td>No<html:radio name="surveyForm" property="answer20"
											value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
											property="answer20" value="1" /></td>
									</tr>

									<tr>
										<td colspan="2" align="center"><html:submit /></td>
									</tr>
								</table>
							</c:when>
							<c:when test="${surveyType == 'survey3'}">
								<tr>
									<td><c:out value="At-Risk Question 0" /></td>
									<td>No<html:radio name="surveyForm" property="answer0"
										value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
										property="answer0" value="1" /></td>
								</tr>

								<tr>
									<td><c:out value="At-Risk Question 1" /></td>
									<td>No<html:radio name="surveyForm" property="answer1"
										value="0" />&nbsp;&nbsp; Yes<html:radio name="surveyForm"
										property="answer1" value="1" /></td>
								</tr>

								<tr>
									<td colspan="2" align="center"><html:submit /></td>
								</tr>


							</c:when>
							<c:when test="${surveyType == 'survey3'}">
								<tr>
									<td>No more surveys!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td>Generic question 1:</td>
									<td><html:text property="answer1" /></td>
									<tr>
										<td>Generic question 2:</td>
										<td><html:text property="answer2" /></td>
									</tr>
								</tr>
							</c:otherwise>
						</c:choose>
						<html:hidden property="activityId" />
						<html:hidden property="processKey" />
					</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</html:form></center>
</body>
</html:html>