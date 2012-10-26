<%@ page import="gammaworld.Npc" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'npc.label', default: 'Npc')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
<g:javascript>
	function updateDropdownOptions(e, id) {
		// The response comes back as a bunch-o-JSON
		var jsonOptions = eval(e.responseText)  // evaluate JSON
		if (jsonOptions) {
			var rselect = document.getElementById(id);
            removeOptions(rselect);
            
            // Rebuild the select
			for (var i=0; i < jsonOptions.length; i++) {
				var jsonOption = jsonOptions[i]
				var opt = document.createElement('option');
				opt.text = jsonOption.name
				opt.value = jsonOption.genotype
				try {
					rselect.add(opt, null) // standards compliant; doesn't work in IE
				}
				catch(ex) {
					rselect.add(opt) // IE only
				}
			}
		}
	}

	function removeOptions(elementOptions) {
		var l = elementOptions.length
		while (l > 0) {
			l--
			elementOptions.remove(l)
		}
	}
	
</g:javascript>	
	<body>
		<a href="#create-npc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-npc" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${npcInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${npcInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
