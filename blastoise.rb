require_relative "pokemon_agua"
 
class Blastoise < Pokemon_agua

    def initialize
        super("Blastoise", 79,83,100,85,105,78)
    end

    def mega_punch(objetive)
        attack_normal(80,objetive)
    end

    def fisure(objetive)
        attack_tierra(80,objetive)
    end

    def defense_curl(objetive)
        @pot_def = [5,@pot_def+1].min
    end

    def hydro_pump(objetive)
        attackEsp_agua(120,objetive)
    end

    def move(objetive)
        if !permisoState()
            return
        end
        random = rand
        if random >0.75
            mega_punch(objetive)
        elsif random > 0.5
            fisure(objetive)
        elsif random > 0.25
            defense_curl(objetive)
        else
            hydro_pump(objetive)
        end
    end
end
