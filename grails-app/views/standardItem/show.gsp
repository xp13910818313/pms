
<%@ page import="com.petrodata.pms.equipment.StandardItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="luminoPro">
		<g:set var="entityName" value="${message(code: 'standardItem.label', default: 'StandardItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>

	</head>
	<body>
	<div class="row">
		<ol class="breadcrumb">
			<li><a  href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home"></span></a></li>
			<li class="active" ><g:link  action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			<li class="active" ><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
		</ol>
	</div><!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<g:message code="default.show.label" args="[entityName]" />
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
				</div>
				<div class="panel-body">
					<table class="table tile">
						

						<tr><th>	<span id="type-label" class="property-label"><g:message code="standardItem.type.label" default="Type" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${standardItemInstance}" field="type"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="aim-label" class="property-label"><g:message code="standardItem.aim.label" default="Aim" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="aim-label"><g:fieldValue bean="${standardItemInstance}" field="aim"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="checkType-label" class="property-label"><g:message code="standardItem.checkType.label" default="Check Type" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="checkType-label"><g:fieldValue bean="${standardItemInstance}" field="checkType"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="checkDays-label" class="property-label"><g:message code="standardItem.checkDays.label" default="Check Days" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="checkDays-label"><g:fieldValue bean="${standardItemInstance}" field="checkDays"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="name-label" class="property-label"><g:message code="standardItem.name.label" default="Name" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${standardItemInstance}" field="name"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="range-label" class="property-label"><g:message code="standardItem.range.label" default="Range" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="range-label"><g:fieldValue bean="${standardItemInstance}" field="range"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="sop-label" class="property-label"><g:message code="standardItem.sop.label" default="Sop" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="sop-label"><g:fieldValue bean="${standardItemInstance}" field="sop"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="sopCode-label" class="property-label"><g:message code="standardItem.sopCode.label" default="Sop Code" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="sopCode-label"><g:fieldValue bean="${standardItemInstance}" field="sopCode"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="accessory-label" class="property-label"><g:message code="standardItem.accessory.label" default="Accessory" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="accessory-label"><g:fieldValue bean="${standardItemInstance}" field="accessory"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="excuteCycle-label" class="property-label"><g:message code="standardItem.excuteCycle.label" default="Excute Cycle" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="excuteCycle-label"><g:fieldValue bean="${standardItemInstance}" field="excuteCycle"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="manhour-label" class="property-label"><g:message code="standardItem.manhour.label" default="Manhour" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="manhour-label"><g:fieldValue bean="${standardItemInstance}" field="manhour"/></span>
								</td>

						</tr>

						

						<tr><th>	<span id="standard-label" class="property-label"><g:message code="standardItem.standard.label" default="Standard" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="standard-label"><g:link controller="standard" action="show" id="${standardItemInstance?.standard?.id}">${standardItemInstance?.standard?.encodeAsHTML()}</g:link></span>
								</td>

						</tr>

						

						<tr><th>	<span id="warningHour-label" class="property-label"><g:message code="standardItem.warningHour.label" default="Warning Hour" /></span></th>
							<td>
								<span class="property-value" aria-labelledby="warningHour-label"><g:fieldValue bean="${standardItemInstance}" field="warningHour"/></span>
								</td>

						</tr>

						   </table>
					<g:form url="[resource:standardItemInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:hiddenField name="id" value="${standardItemInstance?.id}" />
							<g:link class="btn btn-default margin" action="edit"  id="${standardItemInstance?.id}" resource="${standardItemInstance}">
								<span class="glyphicon glyphicon-edit"></span>
								<g:message code="default.button.edit.label" default="Edit" /></g:link>
							<button type="submit" name="_action_delete"
									class="btn btn-default margin"
									onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" >
								<span class="glyphicon glyphicon-trash"></span>${message(code: 'default.button.delete.label', default: 'Delete')}</button>

						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</div><!--/.row-->



	</body>
</html>
