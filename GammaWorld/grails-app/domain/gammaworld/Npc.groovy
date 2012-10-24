package gammaworld

class Npc {
	String name
	String description
	String genotype
	String charClassType
	int level
	int armorClass
	int mentalDefense
	int hitPoints
	int toHitArmorClass
	int numberOfAttacks
	int damage
	int health
	int speed
	int perception
	int stealth
	int remainUnseen
	int useArtifacts
	int robotRecognation
	

    static constraints = { 
		name(blank: false, size: 3..20, unique: true)
		level(min: 1)
		genotype(blank: false)
		charClassType(blank: false)
		
		}
	static hasMany = [
		mutations : Mutation	
	]
	
	static belongsTo = Mutation
}
