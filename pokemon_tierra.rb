require_relative "pokemon" #<= require the file

class Pokemon_tierra < Pokemon
    def attack_tierra(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def attackEsp_tierra(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def defence_tierra(daño)
        super(daño/2)
    end

    def defenceEsp_tierra(daño)
        super(daño/2)
    end

    def defence_agua(daño)
        super(daño*2)
    end

    def defenceEsp_agua(daño)
        super(daño*2)
    end

    def defence_planta(daño)
        super(daño*2)
    end

    def defenceEsp_planta(daño)
        super(daño*2)
    end
end