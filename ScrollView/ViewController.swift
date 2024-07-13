import UIKit

class ViewController: UIViewController {
    
    private var player = Player(gun: Pistol())
    
    private let button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.tintColor = .white
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("Shoot", for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let button2: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("Change to Rifle", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let button3: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("Change to Shotgun", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let button4: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("Change to Pistol", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.widthAnchor.constraint(equalToConstant: 100),
            button1.heightAnchor.constraint(equalToConstant: 50),
            
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 10),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.widthAnchor.constraint(equalToConstant: 150),
            button2.heightAnchor.constraint(equalToConstant: 20),
            
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 10),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button3.widthAnchor.constraint(equalToConstant: 200),
            button3.heightAnchor.constraint(equalToConstant: 20),
            
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 10),
            button4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button4.widthAnchor.constraint(equalToConstant: 200),
            button4.heightAnchor.constraint(equalToConstant: 20)
        ])

        button1.addTarget(self, action: #selector(setButton), for: .touchUpInside)
        button2.addTarget(self, action: #selector(setButton2), for: .touchUpInside)
        button3.addTarget(self, action: #selector(setButton3), for: .touchUpInside)
        button4.addTarget(self, action: #selector(setButton4), for: .touchUpInside)
    }

    @objc func setButton() {
        player.shoot()
    }
    @objc func setButton2() {
        player.gun = Rifle()
    }
    @objc func setButton3() {
        player.gun = Shotgun()
    }
    @objc func setButton4() {
        player.gun = Pistol()
    }
}
