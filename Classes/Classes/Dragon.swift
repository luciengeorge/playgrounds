class Dragon: Enemy {
    var wingSpan: Int = 2

    func talk(speech: String) {
        print("Says: \(speech)")
    }

    override func move() {
        print("Fly forwards")
    }

    override func attack() {
        super.attack()
        print("Spit fire")
    }
}
