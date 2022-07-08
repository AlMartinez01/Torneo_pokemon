require_relative "pokemon_fuego"

class Ninetales < Pokemon_fuego

    def initialize
        super("Ninetales", 73,76,75,81,100,100)
    end

    def fire_blast(objetive)
        val_random = rand
        if val_random < 0.3
            objetive.setState(1)
        end
        attackEsp_fuego(110,objetive)
    end

    def agility(objetive)
        @pot_speed = [5,@pot_speed + 1].min
    end

    def hyper_beam(objetive)
        attackEsp_normal(150,objetive)
        @cooldown = 1
    end

    def solar_beam(objetive)
        attackEsp_planta(120,objetive)
        @cooldown = 1
    end

    def move(objetive)
        if !permisoState()
            return
        end
        random = rand
        if random >0.75
            fire_blast(objetive)
        elsif random > 0.5
            agility(objetive)
        elsif random > 0.25
            hyper_beam(objetive)
        else
            solar_beam(objetive)
        end
    end
end

