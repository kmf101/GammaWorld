package gammaworld

import grails.converters.JSON

class NpcController {

    def scaffold = true
	
	def dynamicDropdown = {
	}
	
	def findMutationsByGenotype = {
		println "fuck!"
		render Mutation.findAllByGenotype(params.genotype) as JSON
	}
}
