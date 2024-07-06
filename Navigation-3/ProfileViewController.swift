
import UIKit

class ProfileViewController: UIViewController {
    private let additionalButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Новая кнопка", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()

        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)

        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),

            additionalButton.topAnchor.constraint(equalTo: profileHeaderView.setStatusButton.bottomAnchor, constant: 10),
            additionalButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            additionalButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            additionalButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    private func setupSubviews() {
        view.addSubview(additionalButton)
        additionalButton.translatesAutoresizingMaskIntoConstraints = false
    }
}
