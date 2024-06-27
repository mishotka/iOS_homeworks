import UIKit

class ProfileHeaderView: UIView {

  private let avatarImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "kiano")
    imageView.contentMode = .scaleAspectFill
    return imageView
  }()

  private let fullNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Михаил Гусев"
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.textColor = .black
    return label
  }()

  private let statusLabel: UILabel = {
    let label = UILabel()
    label.text = "Статус: в растерянности"
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = .gray
    return label
  }()

  private let statusTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Введите статус"
    textField.borderStyle = .roundedRect
    textField.backgroundColor = .white
    return textField
  }()

  private let setStatusButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Установить статус", for: .normal)
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    button.backgroundColor = .darkGray
    button.setTitleColor(.white, for: .normal)
      button.layer.cornerRadius = 10
    return button
  }()

  private let additionalButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Новая кнопка", for: .normal)
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    button.backgroundColor = .lightGray
    button.setTitleColor(.black, for: .normal)
      button.layer.cornerRadius = 10
    return button
  }()

  // Инициализация элементов интерфейса
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupSubviews()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // Настройка элементов интерфейса
  private func setupSubviews() {
    addSubview(avatarImageView)
    addSubview(fullNameLabel)
    addSubview(statusLabel)
    addSubview(statusTextField)
    addSubview(setStatusButton)
    addSubview(additionalButton)

    // Расположение элементов с помощью Auto Layout
    avatarImageView.translatesAutoresizingMaskIntoConstraints = false
    fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
    statusLabel.translatesAutoresizingMaskIntoConstraints = false
    statusTextField.translatesAutoresizingMaskIntoConstraints = false
    setStatusButton.translatesAutoresizingMaskIntoConstraints = false
    additionalButton.translatesAutoresizingMaskIntoConstraints = false

    // Ограничения для avatarImageView
    NSLayoutConstraint.activate([
      avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
      avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      avatarImageView.widthAnchor.constraint(equalToConstant: 100),
      avatarImageView.heightAnchor.constraint(equalToConstant: 100),
    ])

    // Скругление углов аватарки
    avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2

    // Ограничения для fullNameLabel
    NSLayoutConstraint.activate([
      fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
      fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
      fullNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
    ])

    // Ограничения для statusLabel
    NSLayoutConstraint.activate([
      statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 10),
      statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
    ])

    // Ограничения для statusTextField
    NSLayoutConstraint.activate([
      statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
      statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
      statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
    ])

    // Ограничения для setStatusButton
    NSLayoutConstraint.activate([
      setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
      setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
      setStatusButton.heightAnchor.constraint(equalToConstant: 40),
    ])

    // Ограничения для additionalButton
    NSLayoutConstraint.activate([
      additionalButton.topAnchor.constraint(equalTo: setStatusButton.bottomAnchor, constant: 10),
      additionalButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      additionalButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
      additionalButton.heightAnchor.constraint(equalToConstant: 40),
    ])
  }
}
