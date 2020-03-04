import Foundation

protocol Battle{
    func figth(pokemonA: Pokemon, pokemonB: Pokemon) -> Pokemon?
}

class BattleSingle: Battle{
    var battleFinishedMessage : String?
    var winner : Pokemon?
        
    func figth(pokemonA : Pokemon, pokemonB : Pokemon) -> Pokemon?{
        while(pokemonA.PVCurrent > 0 && pokemonB.PVCurrent > 0){
            pokemonA.attackTo(to: pokemonB, move: "Tackle")
            pokemonB.attackTo(to: pokemonA, move: "Scratch")
        }
        winner = pokemonA.PVCurrent > 0 ? pokemonA : pokemonB
        finished(winner: winner)
        return winner
    }
    
    func finished(winner : Pokemon?) -> String {
        battleFinishedMessage? = "The winner is \(winner?.name)"
        return battleFinishedMessage ?? ""
    }
}
