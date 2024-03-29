
<%@ page import="gammaworld.Mutation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mutation.label', default: 'Mutation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mutation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mutation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'mutation.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="genotype" title="${message(code: 'mutation.genotype.label', default: 'Genotype')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'mutation.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mutationInstanceList}" status="i" var="mutationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mutationInstance.id}">${fieldValue(bean: mutationInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: mutationInstance, field: "genotype")}</td>
					
						<td>${fieldValue(bean: mutationInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mutationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
