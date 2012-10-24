
<%@ page import="gammaworld.Npc" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'npc.label', default: 'Npc')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-npc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-npc" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'npc.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="level" title="${message(code: 'npc.level.label', default: 'Level')}" />
					
						<g:sortableColumn property="genotype" title="${message(code: 'npc.genotype.label', default: 'Genotype')}" />
					
						<g:sortableColumn property="charClassType" title="${message(code: 'npc.charClassType.label', default: 'Char Class Type')}" />
					
						<g:sortableColumn property="armorClass" title="${message(code: 'npc.armorClass.label', default: 'Armor Class')}" />
					
						<g:sortableColumn property="damage" title="${message(code: 'npc.damage.label', default: 'Damage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${npcInstanceList}" status="i" var="npcInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${npcInstance.id}">${fieldValue(bean: npcInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: npcInstance, field: "level")}</td>
					
						<td>${fieldValue(bean: npcInstance, field: "genotype")}</td>
					
						<td>${fieldValue(bean: npcInstance, field: "charClassType")}</td>
					
						<td>${fieldValue(bean: npcInstance, field: "armorClass")}</td>
					
						<td>${fieldValue(bean: npcInstance, field: "damage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${npcInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
