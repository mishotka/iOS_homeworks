import UIKit

class ProfileViewController: UIViewController {

    private let profileHeaderView: ProfileHeaderView = {
        let headerView = ProfileHeaderView()
        return headerView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupProfileHeaderView()

        // Добавьте новую UIButton
        let newButton = UIButton(type: .system)
        newButton.setTitle("Новая кнопка", for: .normal)
        newButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        newButton.backgroundColor = .orange
        newButton.tintColor = .black
        view.addSubview(newButton)

        newButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            newButton.topAnchor.constraint(equalTo: profileHeaderView.bottomAnchor, constant: 20),
            newButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            newButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            newButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

    private func setupProfileHeaderView() {
        view.addSubview(profileHeaderView)

        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
        ])
    }
}
