import Foundation

class Pokemon{
    var name: String
    var PVTotal: Int
    var PVCurrent: Int
    var move: String
    
    init(name: String, PVTotal: Int, PVCurrent: Int, move: String){
        self.name = name
        self.PVTotal = PVTotal
        self.PVCurrent = PVCurrent
        self.move = move
    }
    
    func attackTo(to enemy: Pokemon, move: String){
        if move == "Scratch"{
            enemy.PVCurrent = enemy.PVCurrent - 5
        }else{
            enemy.PVCurrent = enemy.PVCurrent - 7
        }
    }
}
extension Pokemon : Equatable {
    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.name == rhs.name &&
                lhs.PVTotal == rhs.PVTotal &&
                lhs.PVCurrent == rhs.PVCurrent
    }
}
