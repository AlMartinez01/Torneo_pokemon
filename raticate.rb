require_relative "pokemon_normal"
 
class Raticate < Pokemon_normal

    def initialize
        super("Raticate", 55,81,60,50,70,97)
    end

    def swords_dance(objetive)
        @pot_atack = [5,@pot_atack+2].min
    end

    def tail_whip(objetive)
        objetive.downDef(1/2)
    end

    def hyper_fang(objetive)
        attack_normal(80,objetive)
    end

    def body_slam(objetive)
        attack_normal(85,objetive)
        val_random = rand
        if val_random < 0.3
            objetive.setState(3) #3 paralisis
        end
    end

    def move(objetive)
        if !permisoState()
            return
        end
        random = rand
        if random >0.75
            swords_dance(objetive)
        elsif random > 0.5
            tail_whip(objetive)
        elsif random > 0.25
            hyper_fang(objetive)
        else
            body_slam(objetive)
        end
    end
end
