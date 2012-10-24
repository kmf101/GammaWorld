<%@ page import="gammaworld.Npc" %>



<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="npc.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="20" required="" value="${npcInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="npc.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="level" min="1" required="" value="${npcInstance.level}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'genotype', 'error')} required">
	<label for="genotype">
		<g:message code="npc.genotype.label" default="Genotype" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genotype" required="" from="${['Pure Strain Human','Altered Human','Mutated Animal','Sentient Plant']}" value="${npcInstance?.genotype}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'charClassType', 'error')} required">
	<label for="charClassType">
		<g:message code="npc.charClassType.label" default="Char Class Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="charClassType" required="" from="${['Enforcer','Esper','Examiner','Scout']}" value="${npcInstance?.charClassType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'armorClass', 'error')} required">
	<label for="armorClass">
		<g:message code="npc.armorClass.label" default="Armor Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="armorClass" required="" value="${npcInstance.armorClass}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'damage', 'error')} required">
	<label for="damage">
		<g:message code="npc.damage.label" default="Damage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="damage" required="" value="${npcInstance.damage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="npc.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${npcInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'health', 'error')} required">
	<label for="health">
		<g:message code="npc.health.label" default="Health" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="health" required="" value="${npcInstance.health}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'hitPoints', 'error')} required">
	<label for="hitPoints">
		<g:message code="npc.hitPoints.label" default="Hit Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="hitPoints" required="" value="${npcInstance.hitPoints}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'mentalDefense', 'error')} required">
	<label for="mentalDefense">
		<g:message code="npc.mentalDefense.label" default="Mental Defense" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="mentalDefense" required="" value="${npcInstance.mentalDefense}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'mutations', 'error')} ">
	<label for="mutations">
		<g:message code="npc.mutations.label" default="Mutations" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'numberOfAttacks', 'error')} required">
	<label for="numberOfAttacks">
		<g:message code="npc.numberOfAttacks.label" default="Number Of Attacks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numberOfAttacks" required="" value="${npcInstance.numberOfAttacks}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'perception', 'error')} required">
	<label for="perception">
		<g:message code="npc.perception.label" default="Perception" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="perception" required="" value="${npcInstance.perception}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'remainUnseen', 'error')} required">
	<label for="remainUnseen">
		<g:message code="npc.remainUnseen.label" default="Remain Unseen" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="remainUnseen" required="" value="${npcInstance.remainUnseen}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'robotRecognation', 'error')} required">
	<label for="robotRecognation">
		<g:message code="npc.robotRecognation.label" default="Robot Recognation" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="robotRecognation" required="" value="${npcInstance.robotRecognation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'speed', 'error')} required">
	<label for="speed">
		<g:message code="npc.speed.label" default="Speed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="speed" required="" value="${npcInstance.speed}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'stealth', 'error')} required">
	<label for="stealth">
		<g:message code="npc.stealth.label" default="Stealth" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="stealth" required="" value="${npcInstance.stealth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'toHitArmorClass', 'error')} required">
	<label for="toHitArmorClass">
		<g:message code="npc.toHitArmorClass.label" default="To Hit Armor Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="toHitArmorClass" required="" value="${npcInstance.toHitArmorClass}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: npcInstance, field: 'useArtifacts', 'error')} required">
	<label for="useArtifacts">
		<g:message code="npc.useArtifacts.label" default="Use Artifacts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="useArtifacts" required="" value="${npcInstance.useArtifacts}"/>
</div>

