import UIKit

class ProfileHeaderView: UIView {

    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        profileImage = UIImage(named: "kiano") // Замените "profileImage" на имя вашего изображения
        return imageView
    }()

    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()

    let statusTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.placeholder = "Статус: Потерялся"
        return textField
    }()

    let setStatusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Установить статус", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .blue
        button.tintColor = .white
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)

        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),

            fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10),
            fullNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            fullNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 10),
            statusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            statusTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            statusTextField.heightAnchor.constraint(equalToConstant: 30),

            setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            setStatusButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
