package gammaworld

class Mutation {
	String name
	String genotype
	String description
	
	

    static constraints = {
		name (blank: false)
		genotype (blank: false)
    }
	
	static hasMany = [
		npcs : Npc
	]

  	String toString() {
	name
	}
}