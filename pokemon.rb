#definimos un pokemon
#CLASE ABSTRACTA
class Pokemon
    
    #metodo iniciador del pokemon
    def initialize(name, base_hp, base_atack, base_defence, base_atack_especial, base_defence_especial, speed)
        @name = name
        @base_hp = base_hp
        @actually_hp = base_hp
        @atack = base_atack
        @defence = base_defence
        @atack_especial = base_atack_especial
        @defence_especial = base_defence_especial
        @speed = speed
        @state = 0 #ESTADOS
        @pot_atack = 1 #AUMENTOS DE ATACKES
        @pot_def = 1 # AUMENTOS DE DEFENSA
        @pot_atackESP = 1 #AUMENTO DE ATACKESP
        @pot_defESP = 1 #AUMENTO DE DEFENSA
        @pot_speed = 1
        @cooldown = 0 #POR SI USAN ATAQUES DE COOLDOWN
    end

    def dañoState()
        if @state == 1
            @actually_hp = @actually_hp - @base_hp/16
        end
    end

    def permisoState()
        if @cooldown == 1
            @cooldown = 0
            return false
        end
        if @state == 3
            random = rand
            if random < 0.25
                return false
            end
        end
        return true
    end

    def SANACION()
        @actually_hp = @base_hp
        @state = 0 
        @pot_atack = 1 
        @pot_def = 1 
        @pot_atackESP = 1 
        @pot_defESP = 1 
        @pot_speed = 1
        @cooldown = 0 
    end

    def getName()
        return @name
    end

    def getspeed()
        return @speed*@pot_speed
    end
        
    def move(objetive)
        #PARA HERENCIA
    end
    
    def setState(newState)
        if @state == 0
            @state = newState
        end
    end

    def downAtk(cantidad)
        @pot_atack = [1/16,@pot_atack*cantidad].min
    end

    def downDef(cantidad)
        @pot_def =  [1/16,@pot_def*cantidad].min
    end

    def getCoolDown
        return @cooldown
    end

    def getState
        return @state
    end

    def deadPokemon
        return @actually_hp<=0
    end

    def getHpActually
        return @actually_hp
    end


    #Ataque/defensa "normales"
    def attack_normal(potencia,objetive)  
        objetive.defence_normal(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_normal(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end

    def attack_fuego(potencia,objetive)
        objetive.defence_fuego(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_fuego(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end

    def attack_agua(potencia,objetive)  
        objetive.defence_agua(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_agua(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end

    def attack_planta(potencia,objetive)  
        objetive.defence_planta(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_planta(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end

    def attack_tierra(potencia,objetive)  
        objetive.defence_tierra(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_tierra(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end

    def attack_volador(potencia,objetive)  
        objetive.defence_volador(potencia*@atack*@pot_atack*1.2)
    end
    
    def defence_volador(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence*@pot_def ),1].max
    end
    #FIN ATAQUES/DEFENSA "NORMALES"

    #ATAQUES/DEFENSA "ESPECIALES"
    def attackEsp_normal(potencia,objetive)  
        objetive.defenceEsp_normal(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_normal(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end

    def attackEsp_fuego(potencia,objetive)
        objetive.defenceEsp_fuego(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_fuego(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end

    def attackEsp_agua(potencia,objetive)  
        objetive.defenceEsp_agua(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_agua(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end

    def attackEsp_planta(potencia,objetive)  
        objetive.defenceEsp_planta(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_planta(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end

    def attackEsp_tierra(potencia,objetive)  
        objetive.defenceEsp_tierra(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_tierra(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end

    def attackEsp_volador(potencia,objetive)  
        objetive.defenceEsp_volador(potencia*@atack_especial*@pot_atackESP*1.2)
    end
    
    def defenceEsp_volador(daño)
        @actually_hp = @actually_hp-[daño/( 25 * @defence_especial*@pot_defESP ),1].max
    end
        
end
