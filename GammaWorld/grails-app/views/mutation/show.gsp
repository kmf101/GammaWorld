
<%@ page import="gammaworld.Mutation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mutation.label', default: 'Mutation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mutation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mutation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mutation">
			
				<g:if test="${mutationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="mutation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${mutationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mutationInstance?.genotype}">
				<li class="fieldcontain">
					<span id="genotype-label" class="property-label"><g:message code="mutation.genotype.label" default="Genotype" /></span>
					
						<span class="property-value" aria-labelledby="genotype-label"><g:fieldValue bean="${mutationInstance}" field="genotype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mutationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="mutation.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${mutationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${mutationInstance?.id}" />
					<g:link class="edit" action="edit" id="${mutationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
