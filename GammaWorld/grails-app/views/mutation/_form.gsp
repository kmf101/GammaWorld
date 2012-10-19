<%@ page import="gammaworld.Mutation" %>



<div class="fieldcontain ${hasErrors(bean: mutationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="mutation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${mutationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mutationInstance, field: 'genotype', 'error')} required">
	<label for="genotype">
		<g:message code="mutation.genotype.label" default="Genotype" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genotype" from="${['Pure Strain Human','Altered Human','Mutated Animal','Sentient Plant']}" required="" value="${mutationInstance?.genotype}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mutationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="mutation.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${mutationInstance?.description}"/>
</div>

