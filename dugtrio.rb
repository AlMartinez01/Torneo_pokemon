require_relative "pokemon_tierra" #<= require the file

class Dugtrio < Pokemon_tierra
    def initialize
        super("Dugtrio",35,100,50,50,70,120)
    end

    def scratch(objetive)
        attack_normal(40,objetive)
    end

    def fisure(objetive)
        attack_tierra(80,objetive)
    end

    def magnituded(objetive)
        varies = [40,60,80,100,120]
        attack_tierra(varies[rand(varies.length)],objetive)
    end

    def tri_attack(objetive)
        attackEsp_normal(80,objetive)
    end

    def move(objetive)
        if !permisoState()
            return
        end
        
        random = rand
        if random >0.75
            scratch(objetive)
        elsif random > 0.5
            fisure(objetive)
        elsif random > 0.25
            magnituded(objetive)
        else
            tri_attack(objetive)
        end
    end
end
