protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("this would be the default behavior if the #fly func isn't defined in struct/class adopting the protocol")
    }
}

class Bird {
    var isFemale = true

    func layEgg() {
        if isFemale {
            print("The bird can lay eggs")
        }
    }
}

class Eagle: Bird, CanFly {
    func soar() {
        print("Eagle is soaring")
    }

    func fly() {
        print("Eagle is flying")
    }
}

class Penguin: Bird {
    func swim() {
        print("Penguin can swim")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("Airplane is flying")
    }
}

let eagle = Eagle()
let pengouin = Penguin()
let museum = FlyingMuseum()
let plane = Airplane()

museum.flyingDemo(flyingObject: plane)
