
//allows the EmergencyCallHandler to request a medical emergency to perform CPR without caring about who is on call.
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    func assessSituation() {
        print("Can you tell me what happened?")
    }

    func medicalEmergency() {
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {

    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    func performCPR() {
        print("paramedic performing CPR")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    func performCPR() {
        print("Doctor performing CPR")
    }

    func useStetoscope() {
        print("Doctor uses stetoscope")
    }
}

//inherits from Doctor and thus adopts the AdvancedLifeSupport protocol automatically
class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Doctor is Surgeon")
    }

    func useElectricDrill() {
        print("Using electric drill")
    }
}


let callHandler = EmergencyCallHandler()
let surgeon = Surgeon(handler: callHandler)

callHandler.assessSituation()
callHandler.medicalEmergency()
