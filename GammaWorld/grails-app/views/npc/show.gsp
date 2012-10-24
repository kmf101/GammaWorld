
<%@ page import="gammaworld.Npc" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'npc.label', default: 'Npc')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-npc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-npc" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list npc">
			
				<g:if test="${npcInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="npc.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${npcInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="npc.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${npcInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.genotype}">
				<li class="fieldcontain">
					<span id="genotype-label" class="property-label"><g:message code="npc.genotype.label" default="Genotype" /></span>
					
						<span class="property-value" aria-labelledby="genotype-label"><g:fieldValue bean="${npcInstance}" field="genotype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.charClassType}">
				<li class="fieldcontain">
					<span id="charClassType-label" class="property-label"><g:message code="npc.charClassType.label" default="Char Class Type" /></span>
					
						<span class="property-value" aria-labelledby="charClassType-label"><g:fieldValue bean="${npcInstance}" field="charClassType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.armorClass}">
				<li class="fieldcontain">
					<span id="armorClass-label" class="property-label"><g:message code="npc.armorClass.label" default="Armor Class" /></span>
					
						<span class="property-value" aria-labelledby="armorClass-label"><g:fieldValue bean="${npcInstance}" field="armorClass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.damage}">
				<li class="fieldcontain">
					<span id="damage-label" class="property-label"><g:message code="npc.damage.label" default="Damage" /></span>
					
						<span class="property-value" aria-labelledby="damage-label"><g:fieldValue bean="${npcInstance}" field="damage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="npc.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${npcInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.health}">
				<li class="fieldcontain">
					<span id="health-label" class="property-label"><g:message code="npc.health.label" default="Health" /></span>
					
						<span class="property-value" aria-labelledby="health-label"><g:fieldValue bean="${npcInstance}" field="health"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.hitPoints}">
				<li class="fieldcontain">
					<span id="hitPoints-label" class="property-label"><g:message code="npc.hitPoints.label" default="Hit Points" /></span>
					
						<span class="property-value" aria-labelledby="hitPoints-label"><g:fieldValue bean="${npcInstance}" field="hitPoints"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.mentalDefense}">
				<li class="fieldcontain">
					<span id="mentalDefense-label" class="property-label"><g:message code="npc.mentalDefense.label" default="Mental Defense" /></span>
					
						<span class="property-value" aria-labelledby="mentalDefense-label"><g:fieldValue bean="${npcInstance}" field="mentalDefense"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.mutations}">
				<li class="fieldcontain">
					<span id="mutations-label" class="property-label"><g:message code="npc.mutations.label" default="Mutations" /></span>
					
						<g:each in="${npcInstance.mutations}" var="m">
						<span class="property-value" aria-labelledby="mutations-label"><g:link controller="mutation" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.numberOfAttacks}">
				<li class="fieldcontain">
					<span id="numberOfAttacks-label" class="property-label"><g:message code="npc.numberOfAttacks.label" default="Number Of Attacks" /></span>
					
						<span class="property-value" aria-labelledby="numberOfAttacks-label"><g:fieldValue bean="${npcInstance}" field="numberOfAttacks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.perception}">
				<li class="fieldcontain">
					<span id="perception-label" class="property-label"><g:message code="npc.perception.label" default="Perception" /></span>
					
						<span class="property-value" aria-labelledby="perception-label"><g:fieldValue bean="${npcInstance}" field="perception"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.remainUnseen}">
				<li class="fieldcontain">
					<span id="remainUnseen-label" class="property-label"><g:message code="npc.remainUnseen.label" default="Remain Unseen" /></span>
					
						<span class="property-value" aria-labelledby="remainUnseen-label"><g:fieldValue bean="${npcInstance}" field="remainUnseen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.robotRecognation}">
				<li class="fieldcontain">
					<span id="robotRecognation-label" class="property-label"><g:message code="npc.robotRecognation.label" default="Robot Recognation" /></span>
					
						<span class="property-value" aria-labelledby="robotRecognation-label"><g:fieldValue bean="${npcInstance}" field="robotRecognation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.speed}">
				<li class="fieldcontain">
					<span id="speed-label" class="property-label"><g:message code="npc.speed.label" default="Speed" /></span>
					
						<span class="property-value" aria-labelledby="speed-label"><g:fieldValue bean="${npcInstance}" field="speed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.stealth}">
				<li class="fieldcontain">
					<span id="stealth-label" class="property-label"><g:message code="npc.stealth.label" default="Stealth" /></span>
					
						<span class="property-value" aria-labelledby="stealth-label"><g:fieldValue bean="${npcInstance}" field="stealth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.toHitArmorClass}">
				<li class="fieldcontain">
					<span id="toHitArmorClass-label" class="property-label"><g:message code="npc.toHitArmorClass.label" default="To Hit Armor Class" /></span>
					
						<span class="property-value" aria-labelledby="toHitArmorClass-label"><g:fieldValue bean="${npcInstance}" field="toHitArmorClass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${npcInstance?.useArtifacts}">
				<li class="fieldcontain">
					<span id="useArtifacts-label" class="property-label"><g:message code="npc.useArtifacts.label" default="Use Artifacts" /></span>
					
						<span class="property-value" aria-labelledby="useArtifacts-label"><g:fieldValue bean="${npcInstance}" field="useArtifacts"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${npcInstance?.id}" />
					<g:link class="edit" action="edit" id="${npcInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
