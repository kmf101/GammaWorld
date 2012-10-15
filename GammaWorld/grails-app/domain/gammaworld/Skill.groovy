package gammaworld

class Skill {
	String skillName
	String charClassType
	String skillDescription

    static constraints = {
		skillName(blank: false)
		charClassType (blank: false)
    }
}
