<%@ page import="com.petrodata.pms.equipment.StandardItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="luminoPro">
		<g:set var="entityName" value="${message(code: 'standardItem.label', default: 'StandardItem')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home"></span></a></li>
			<li class="active" ><g:link  action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			<li class="active" ><g:link  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
		</ol>
	</div><!--/.row-->

	<div class="row">
		<div class="col-lg-12 form-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<g:message code="default.edit.label" args="[entityName]" />
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${standardItemInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${standardItemInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
				</div>
				<div class="panel-body">
					<g:form url="[resource:standardItemInstance, action:'update']" method="PUT" >
					<g:hiddenField name="version" value="${standardItemInstance?.version}" />
					<g:hiddenField name="id" value="${standardItemInstance?.id}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<button class="btn btn-default margin" name="edit" type="submit"><span class="glyphicon glyphicon-check"></span> &nbsp;${message(code: 'default.button.edit.label', default: 'Edit')}</button>

					</fieldset>
					</g:form>
			</div>
		</div>
	</div>
	</body>
</html>
