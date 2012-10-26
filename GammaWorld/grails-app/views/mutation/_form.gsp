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
	<g:select name="genotype" required="" 
		from="${['Pure Strain Human','Altered Human','Mutated Animal','Sentient Plant']}" 
		keys="${['ps','ah','ma','sp']}"
		value="${mutationInstance?.genotype}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mutationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="mutation.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${mutationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mutationInstance, field: 'npcs', 'error')} ">
	<label for="npcs">
		<g:message code="mutation.npcs.label" default="Npcs" />
		
	</label>
	<g:select name="npcs" from="${gammaworld.Npc.list()}" multiple="multiple" optionKey="id" size="5" value="${mutationInstance?.npcs*.id}" class="many-to-many"/>
</div>

