class Enemy {
    var health: Int
    var attackStrength: Int

    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }

    func move() {
        print("move forwards")
    }

    func takeDamage(by damage: Int) {
        health -= damage
    }

    func attack() {
        print("Land a hit. Does \(attackStrength) damage")
    }
}
