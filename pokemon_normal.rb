require_relative "pokemon" #<= require the file

#Pokemon_normal
class Pokemon_normal < Pokemon

    #Ataque/defensa "normales"
    def attack_normal(potencia,objetive)  
        super(potencia*1.5,objetive)
    end

    def attackEsp_normal(potencia,objetive)  
        super(potencia*1.5,objetive)
    end
end
