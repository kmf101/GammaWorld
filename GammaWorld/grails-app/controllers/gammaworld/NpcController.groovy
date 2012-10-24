package gammaworld
import grails.converters.*

class NpcController {

    def scaffold = true
	
	def ajaxGetMutations = {
		def npc = Npc.get(params.id)
		render npc?.mutations as JSON
	}
}
