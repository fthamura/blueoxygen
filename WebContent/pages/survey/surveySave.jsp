<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/c" prefix="c"%>

<html:html>
<link rel="stylesheet" type="text/css"
	href="http://www.w3.org/StyleSheets/Core/Modernist" />
<center>
<table border="1" bordercolor="red" cellpadding="0" cellspacing="0"
	width="100%">
	<tr>
		<td align="center">
		<table width="100%">
			<tr>
				<td><html:img page="/pages/images/sub_top.jpg" /></td>
			</tr>
			<tr>
				<td align="center"><html:form action="/SubmitSurveyThisContext.do">

					<table border="0" width="50%">

						<c:choose>
							<c:when test="${surveyType == 'survey1'}">
								<table>

									<tr>
										<td><b>Medical Conditions</b></td>
									</tr>
									</tbody>
								</table>
								<div id="QCS_2">
								<table width="98%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr id="QCTR_2">
											<td colspan="2" class="clsLabelOnly"><span id="QCT_2">This
											section is about whether you currently have any of the
											medical conditions listed below. Review the list and mark yes
											for the conditions you currently have and no for the
											conditions you do not currently have. </td>
										</tr>
										<tr id="QCPR_2">
											<td colspan="2" class="clsLabelOnly"><span id="QCP_2"></span>
											</td>
										</tr>
										<tr style="display:" id="QR_81">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_81">Allergies</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_81" cn="ALLR"> <input
												id="A_81_1" cn="ALLR" name="Q81" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_81_1">Yes</label> <input id="A_81_0" cn="ALLR"
												name="Q81" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_81_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_82">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_82">Arthritis</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_82" cn="ARTH"> <input
												id="A_82_1" cn="ARTH" name="Q82" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_82_1">Yes</label> <input id="A_82_0" cn="ARTH"
												name="Q82" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_82_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_83">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_83">Asthma</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_83" cn="ASTH"> <input
												id="A_83_1" cn="ASTH" name="Q83" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_83_1">Yes</label> <input id="A_83_0" cn="ASTH"
												name="Q83" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_83_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_84">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_84">Cancer</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_84" cn="CANC"> <input
												id="A_84_1" cn="CANC" name="Q84" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_84_1">Yes</label> <input id="A_84_0" cn="CANC"
												name="Q84" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_84_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_85">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_85">Cataracts</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_85" cn="CATA"> <input
												id="A_85_1" cn="CATA" name="Q85" type="radio"
												checked="checked" value="1" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_85_1">Yes</label> <input id="A_85_0" cn="CATA"
												name="Q85" type="radio" value="0" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_85_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_86">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_86">Chronic back problems</span>
											<br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_86" cn="BKPR"> <input
												id="A_86_1" cn="BKPR" name="Q86" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_86_1">Yes</label> <input id="A_86_0" cn="BKPR"
												name="Q86" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_86_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_87">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_87">Chronic lung disease</span>
											<br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_87" cn="LUNG"> <input
												id="A_87_1" cn="LUNG" name="Q87" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_87_1">Yes</label> <input id="A_87_0" cn="LUNG"
												name="Q87" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_87_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_88">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_88">Coronary heart disease,
											congestive heart failure, angina, heart attack, or heart
											surgery</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_88" cn="HTDZ"> <input
												id="A_88_1" cn="HTDZ" name="Q88" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_88_1">Yes</label> <input id="A_88_0" cn="HTDZ"
												name="Q88" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_88_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_89">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_89">Deafness</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_89" cn="DEAF"> <input
												id="A_89_1" cn="DEAF" name="Q89" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_89_1">Yes</label> <input id="A_89_0" cn="DEAF"
												name="Q89" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_89_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_90">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_90">Depression</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_90" cn="DPDZ"> <input
												id="A_90_1" cn="DPDZ" name="Q90" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_90_1">Yes</label> <input id="A_90_0" cn="DPDZ"
												name="Q90" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_90_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_91">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_91">Diabetes or high blood
											sugar</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_91" cn="DIAB"> <input
												id="A_91_1" cn="DIAB" name="Q91" type="radio"
												checked="checked" value="1" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_91_1">Yes</label> <input id="A_91_0" cn="DIAB"
												name="Q91" type="radio" value="0" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_91_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_92">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_92">High blood pressure of
											140/90 or higher</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_92" cn="HIBP"> <input
												id="A_92_1" cn="HIBP" name="Q92" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_92_1">Yes</label> <input id="A_92_0" cn="HIBP"
												name="Q92" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_92_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_93">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_93">Kidney disease</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_93" cn="KIDN"> <input
												id="A_93_1" cn="KIDN" name="Q93" type="radio"
												checked="checked" value="1" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_93_1">Yes</label> <input id="A_93_0" cn="KIDN"
												name="Q93" type="radio" value="0" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_93_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_94">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_94">Osteoporosis</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_94" cn="OSTE"> <input
												id="A_94_1" cn="OSTE" name="Q94" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_94_1">Yes</label> <input id="A_94_0" cn="OSTE"
												name="Q94" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_94_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_95">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_95">Psychiatric illness other
											than depression</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_95" cn="PSYC"> <input
												id="A_95_1" cn="PSYC" name="Q95" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_95_1">Yes</label> <input id="A_95_0" cn="PSYC"
												name="Q95" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_95_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_96">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_96">Seizures or epilepsy</span>
											<br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_96" cn="EPIL"> <input
												id="A_96_1" cn="EPIL" name="Q96" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_96_1">Yes</label> <input id="A_96_0" cn="EPIL"
												name="Q96" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_96_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_97">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_97">Stroke</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_97" cn="STRO"> <input
												id="A_97_1" cn="STRO" name="Q97" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_97_1">Yes</label> <input id="A_97_0" cn="STRO"
												name="Q97" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_97_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_98">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_98">Total blood cholesterol of
											240 or higher</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_98" cn="HICH"> <input
												id="A_98_1" cn="HICH" name="Q98" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_98_1">Yes</label> <input id="A_98_0" cn="HICH"
												name="Q98" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_98_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_99">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_99">Ulcer or bowel/stomach
											bleeding</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_99" cn="ULCR"> <input
												id="A_99_1" cn="ULCR" name="Q99" type="radio" value="1"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_99_1">Yes</label> <input id="A_99_0" cn="ULCR"
												name="Q99" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_99_0">No</label> </span></td>
										</tr>
										<tr style="display:" id="QR_100">
											<td class="clsAttrLabel">
											<div class="lvl1"><span id="QT_100">Other medical
											condition(s)</span> <br />
											</div>
											</td>
											<td nowrap="nowrap" valign="top"><span id="Q_100" cn="OTDZ">
											<input id="A_100_1" cn="OTDZ" name="Q100" type="radio"
												value="1" onblur="handleBlur(this)"
												onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_100_1">Yes</label> <input id="A_100_0" cn="OTDZ"
												name="Q100" type="radio" checked="checked" value="0"
												onblur="handleBlur(this)" onfocus="handleFocus(this)"
												onclick="this.click();wasChanged(this)" /> <label
												for="A_100_0">No</label> </span></td>
										</tr>
								</table>
							</c:when>
							<c:when test="${surveyType == 'survey2'}">
								<tr>
									<td>At Risk question 1:</td>
									<td><html:text property="answer1" /></td>
									<tr>
										<td>At Risk question 2:</td>
										<td><html:text property="answer2" /></td>
							</c:when>
							<c:otherwise>
								<tr>
									<td>Generic question 1:</td>
									<td><html:text property="answer1" /></td>
									<tr>
										<td>Generic question 2:</td>
										<td><html:text property="answer2" /></td>
							</c:otherwise>
						</c:choose>
						<html:hidden property="activityId" />
						<html:hidden property="processKey" />
						<tr>
							<td colspan="2"><html:submit /></td>
						</tr>
					</table></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</html:form>
</html:html>
