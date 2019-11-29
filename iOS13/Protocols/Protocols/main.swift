
protocol Human {
    func breathe()
}

class Player {
    
    var isImmortal: Bool = true
    
    func move() {
        print("Player is moving")
    }
    
    func revive() {
        if isImmortal {
            print("Reviving the immortal")
        }
    }
}

class DefinitelyNotAnmol: Player {
    func canCode() {
        print("Coding...")
    }
}

var anmol: DefinitelyNotAnmol = DefinitelyNotAnmol()
anmol.move()
anmol.revive()
anmol.canCode()
