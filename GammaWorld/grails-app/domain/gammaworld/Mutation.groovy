package gammaworld

class Mutation {
	String mutationName
	String genotype
	String mutationDescription
	
	

    static constraints = {
		mutationName (blank: false)
		genotype (blank: false)
    }
	
	static hasMany = {
		npcs : Npc
	}
}
