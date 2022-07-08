require_relative "pokemon_agua"
 
class Magikarp < Pokemon_agua

    def initialize
        super("Magikarp el inmortal", 100,10,200,85,200,78)
    end

    def salpicadura(objetive)
    end

    def move(objetive)
        if !permisoState()
            return
        end
        salpicadura(objetive)
    end
end