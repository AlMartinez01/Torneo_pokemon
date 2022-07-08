require_relative "pokemon_fuego"

class Rapidash < Pokemon_fuego
    def initialize
        super("rapidash", 65,100,70,80,80,105)
    end

    def fire_blast(objetive)
        val_random = rand
        if val_random < 0.3
            objetive.setState(1)
        end
        attack_fuego(110,objetive)
    end

    def agility(objetive)
        @pot_speed = [5,@pot_speed + 1].min
    end

    def smart_strike(objetive)
        attack_normal(70,objetive)
    end

    def flame_wheel(objetive)
        attackEsp_fuego(70,objetive)
        val_random = rand
        if val_random < 0.1
            objetive.setState(1)
        end
        if @state == 2
            @state = 0
        end
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
            smart_strike(objetive)
        else
            flame_wheel(objetive)
        end
    end
end