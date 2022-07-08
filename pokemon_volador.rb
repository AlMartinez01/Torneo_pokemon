require_relative "pokemon" #<= require the file

class Pokemon_volador < Pokemon
    def attack_normal(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def attackEsp_normal(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def attack_volador(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def attackEsp_volador(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def defence_planta(daño)
        super(daño/2)
    end

    def defenceEsp_planta(daño)
        super(daño/2)
    end

    def defence_tierra(daño)
    end

    def defenceEsp_tierra(daño)
    end
end

