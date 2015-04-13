<%@ page import="com.petrodata.pms.equipment.EquipmentStandardHistory" %>



<div class="fieldcontain ${hasErrors(bean: equipmentStandardHistoryInstance, field: 'beginDate', 'error')} required">
	<label for="beginDate">
		<g:message code="equipmentStandardHistory.beginDate.label" default="Begin Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="beginDate" precision="day"  value="${equipmentStandardHistoryInstance?.beginDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentStandardHistoryInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="equipmentStandardHistory.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${equipmentStandardHistoryInstance?.endDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentStandardHistoryInstance, field: 'equipment', 'error')} required">
	<label for="equipment">
		<g:message code="equipmentStandardHistory.equipment.label" default="Equipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="equipment" name="equipment.id" from="${com.petrodata.pms.equipment.Equipment.list()}" optionKey="id" required="" value="${equipmentStandardHistoryInstance?.equipment?.id}" class="form-control input-lg m-b-10"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentStandardHistoryInstance, field: 'standard', 'error')} required">
	<label for="standard">
		<g:message code="equipmentStandardHistory.standard.label" default="Standard" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="standard" name="standard.id" from="${com.petrodata.pms.equipment.Standard.list()}" optionKey="id" required="" value="${equipmentStandardHistoryInstance?.standard?.id}" class="form-control input-lg m-b-10"/>

</div>

