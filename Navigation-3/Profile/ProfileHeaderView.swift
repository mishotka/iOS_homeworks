
import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()

    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()

    let statusTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.cornerRadius = 4
        return textView
    }()

    let addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show status", for: .normal)
        button.addTarget(ProfileHeaderView.self, action: #selector(buttonPressed), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        addSubview(avatarImageView)
        addSubview(nameLabel)
        addSubview(subtitleLabel)
        addSubview(statusTextView)
        addSubview(addButton)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        
        avatarImageView.frame = CGRect(origin: .zero, size: CGSize(width: 80, height: 80))
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.image = UIImage(named: "kiano")
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        
        nameLabel.frame = CGRect(x: self.superview!.bounds.origin.x + avatarImageView.frame.maxX - 56,
                                        y: 0,
                                        width: self.superview!.bounds.width - avatarImageView.frame.maxX,
                                        height: 24)
        nameLabel.textAlignment = .center
        nameLabel.text = "Hipster Kiano"
        
        subtitleLabel.frame = CGRect(x: self.superview!.bounds.origin.x + avatarImageView.frame.maxX + 40,
                                        y: addButton.frame.maxY - 98,
                                        width: self.superview!.bounds.width - avatarImageView.frame.maxX,
                                        height: 20)
        subtitleLabel.text = "Whiting for something..."

        statusTextView.frame = CGRect(x: self.superview!.bounds.origin.x + avatarImageView.frame.maxX + 40,
                                      y: addButton.frame.maxY - 98,
                                      width: self.superview!.bounds.width - avatarImageView.frame.maxX,
                                      height: 20)
        statusTextView.backgroundColor = UIColor.clear
        statusTextView.layer.borderWidth = 0

        let buttonWidth = self.superview!.bounds.width - 16
        let rightMargin = 16
        let buttonX = self.superview!.bounds.width - buttonWidth - 16
        let buttonY = avatarImageView.frame.maxY + 16

        addButton.frame = CGRect(x: buttonX,
                                  y: buttonY,
                                  width: buttonWidth,
                                  height: 50)
        addButton.backgroundColor = UIColor.systemBlue
        addButton.layer.shadowColor = UIColor.black.cgColor
        addButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        addButton.layer.shadowRadius = 4
        addButton.layer.shadowOpacity = 0.7
    }

    @objc func buttonPressed() {
        print(statusTextView.text ?? "")
    }
}
