require_relative "pokemon_volador"

class Pidgeotto < Pokemon_volador

    def initialize()
        super("Pidgeotto", 63,60,55,50,50,71)
    end

    def razor_wind(objetive)
        attack_volador(80,objetive)
    end

    def agility(objetive)
        @pot_speed = [5,@pot_speed + 1].min
    end

    def sky_attack(objetive)
        attack_volador(140,objetive)
        @cooldown = 1
    end

    def feather_dance(objetive)
        objetive.downAtk(2)
    end

    def move(objetive)
        if !permisoState()
            return
        end
        random = rand()
        if random > 0.75
            razor_wind(objetive)
        elsif random > 0.5
            agility(objetive)
        elsif random > 0.25
            sky_attack(objetive)
        else
            feather_dance(objetive)
        end
    end

end
