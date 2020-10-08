//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*print("Hello World")

protocol Canfly{
    func fly()
}

class Bird: Canfly {
    func fly() {
        print("The bird flaps its wings and lifts off into the sky")
    }
    
    var isFemale = true
    func layEgg() {
        if isFemale{
            print("The bird makes a new bird in a shell")
        }
    }
    
}
struct Airplane: Canfly{
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

class Eagle: Bird{
    func soar() {
        print("The eagle glides in the air using air currents")
    }

}
struct FlyingMuseum{
    func flyingDemo(flyingObject: Canfly) {
        flyingObject.fly()
    }
}
let myEagle = Eagle()
let myMeseum = FlyingMuseum()
let myPlane = Airplane()
myMeseum.flyingDemo(flyingObject: myPlane)


//comment viewcontroller
class MyViewController : UIViewController {
    let cardView = UIView()
    let videoImageView = UIImageView()
    let titleLabel = UILabel()
    let watchButton = UIButton()
    let animateButton = UIButton()
    
    var cardViewBottomConstraint: NSLayoutConstraint!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .green
        

        self.view = view
        setupCardView()
    }
    
    func setupCardView() {
        view.addSubview(cardView)
        cardView.backgroundColor    = .white
        cardView.layer.cornerRadius = 12
        setupCardViewConstraints()
        
        setupAnimateButton()
        setupVideoImageView()
        setupTitleLabel()
        setupWatchButton()
    }
    
    func setupVideoImageView() {
        cardView.addSubview(videoImageView)
        videoImageView.layer.cornerRadius  = 12
        videoImageView.layer.masksToBounds = true
        videoImageView.image               = UIImage(named: "2018-setup.png")
        
        setVideoImageViewConstraints()
    }
    
    
    func setupTitleLabel() {
        cardView.addSubview(titleLabel)
        titleLabel.text             = "2018 Setup"
        titleLabel.font             = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor        = .darkGray
        titleLabel.textAlignment    = .center
        
        setTitleLabelConstraints()
    }
    
    
    func setupWatchButton() {
        cardView.addSubview(watchButton)
        watchButton.setTitle("Watch Now", for: .normal)
        watchButton.setTitleColor(.white, for: .normal)
        watchButton.backgroundColor    = .red
        watchButton.layer.cornerRadius = 12
        
        setWatchButtonConstraints()
    }
    
    
    func setupAnimateButton() {
        view.addSubview(animateButton)
        animateButton.setTitle("Animate", for: .normal)
        animateButton.setTitleColor(.white, for: .normal)
        animateButton.backgroundColor    = .blue
        animateButton.layer.cornerRadius = 12
        animateButton.addTarget(self, action: #selector(animateCard), for: .touchUpInside)
        
        setAnimateButtonConstraints()
    }
    
    
    func setupCardViewConstraints() {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 360).isActive = true
        
        cardViewBottomConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
        cardViewBottomConstraint.isActive = true
    }
    
    
    func setVideoImageViewConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        videoImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        videoImageView.heightAnchor.constraint(equalTo: videoImageView.widthAnchor, multiplier: 9.0/16.0).isActive = true
        videoImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 50).isActive = true
    }
    
    
    func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        titleLabel.topAnchor.constraint(equalTo: videoImageView.bottomAnchor, constant: 18).isActive = true
    }
    
    
    func setWatchButtonConstraints() {
        watchButton.translatesAutoresizingMaskIntoConstraints = false
        watchButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        watchButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        watchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        watchButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20).isActive = true
    }
    
    
    func setAnimateButtonConstraints() {
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        animateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        animateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        animateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        animateButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    
    
    @objc func animateCard() {
        cardViewBottomConstraint.constant = -10
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}
// Present the view controller in the Live View window
//device
let vc = MyViewController()
vc.preferredContentSize = CGSize(width: 320, height: 568) //iPhone X 375*812

PlaygroundPage.current.liveView = vc*/

protocol AdvancedLifeSupport{
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    func medicalEmergency() {
        //call the delegate here
        delegate?.performCPR()
    }
    
}

struct Paramedic: AdvancedLifeSupport{
    //initializer ie start shift ie get notified
    init(handler: EmergencyCallHandler) {
        //set themselves delegate
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    
}

class Doctor: AdvancedLifeSupport{
    //set him/her self up
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The doctor does chest compressions, 30 per second")
    }
    func usesStethescope() {
        print("Listening for heart sounds")
    }
   
}

class Surgeon: Doctor{
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by beeGees")
    }
    func useElectricDrill() {
        print("whirr...")
    }
}

//objects
let emillio = EmergencyCallHandler()
let maestro = Surgeon(handler: emillio)
emillio.assessSituation()
emillio.medicalEmergency()
