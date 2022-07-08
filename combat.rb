require_relative "pidgeotto"
require_relative "ninetales"
require_relative "magikarp"
require_relative "dugtrio"
require_relative "blastoise"
require_relative "rapidash"
require_relative "raticate"
require_relative "tangela"

pidgeotto = Pidgeotto.new()
ninetales = Ninetales.new()
magikarp = Magikarp.new()
dugtrio = Dugtrio.new()
blastoise = Blastoise.new()
rapidash = Rapidash.new()
raticate = Raticate.new()
tangela = Tangela.new()

peleadores = [pidgeotto,ninetales,magikarp,dugtrio,blastoise,rapidash,raticate,tangela].shuffle

def masVeloz(peleador1,peleador2)
    return peleador1.getspeed > peleador2.getspeed
end

def sanar(lista_peleadores)
    lista_peleadores.each do |pokemon|
        pokemon.SANACION()
    end
end


def combate(peleador1,peleador2)
    puts peleador1.getName
    puts peleador2.getName
    while true
        if masVeloz(peleador1,peleador2)
            peleador1.move(peleador2)
            if peleador2.deadPokemon
                puts "ganador " + peleador1.getName
                return peleador1
            end
            peleador2.move(peleador1)
            if peleador1.deadPokemon
                puts "ganador " + peleador2.getName
                return peleador2
            end
        else
            peleador2.move(peleador1)
            if peleador1.deadPokemon
                puts "ganador " + peleador2.getName
                return peleador2
            end
            peleador1.move(peleador2)
            if peleador2.deadPokemon
                puts "ganador " + peleador1.getName
                return peleador1
            end
        end
        peleador1.dañoState()
        peleador2.dañoState()
        
    end
end

def fase(lista_peleadores)
    avanzan = []
    total = lista_peleadores.length / 2
    n = 0
    while n < total
        puts ('combate: '+(n+1).to_s)

        avanzan.push(combate(lista_peleadores[n*2 +1],lista_peleadores[n*2]))

        n = n + 1 
    end
    return avanzan
end

#fase(peleadores)

def torneo(lista_peleadores)
    puts "primera fase: \n \n"
    lista_peleadores = fase(lista_peleadores)
    sanar(lista_peleadores)
    puts "\nSemi finales!!: \n \n"
    lista_peleadores = fase(lista_peleadores)
    puts "\nLa gran final: \n \n"
    lista_peleadores = fase(lista_peleadores)
end








