import XCTest
@testable import MiniGame

class testBattle: XCTestCase {
    
    var sut: Battle?
    
    override func setUp() {
        super.setUp()
        sut = BattleSingle()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testFigth() {
        let pokemon1 = Pokemon(name: "Bulbasaur", PVTotal: 45, PVCurrent: 45, move: "Tackle")
        let pokemon2 = Pokemon(name: "Charmander", PVTotal: 39, PVCurrent: 39, move: "Scratch")
    
        var result = sut?.figth(pokemonA: pokemon1, pokemonB:pokemon2)
        
        XCTAssertEqual(result, pokemon1)
    }
}
