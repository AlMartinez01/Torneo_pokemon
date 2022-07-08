require_relative "pokemon_planta"

class Tangela < Pokemon_planta

    def initialize
        super("Tangela", 65,55,115,100,40,60)
    end

    def giga_drain(objetive)
        hp_rival_before = objetive.getHpActually
        attackEsp_planta(75,objetive)
        hp_rival_after = [objetive.getHpActually,0].max
        @actually_hp = [@base_hp,@actually_hp + (hp_rival_before - hp_rival_after)/2].min
    end

    def flail(objetive)
        if @actually_hp/@base_hp > 0.75
            attack_normal(20,objetive)
        elsif @actually_hp/@base_hp > 0.5
            attack_normal(40,objetive)
        elsif @actually_hp/@base_hp > 0.25
            attack_normal(80,objetive)
        elsif @actually_hp/@base_hp > 0.1
            attack_normal(120,objetive)
        else
            attack_normal(200,objetive)
        end
    end

    def amnesia(objetive)
        @pot_atackESP = [5,@pot_atackESP +1].max
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
            giga_drain(objetive)
        elsif random > 0.5
            flail(objetive)
        elsif random > 0.25
            amnesia(objetive)
        else
            solar_beam(objetive)
        end
    end
end


