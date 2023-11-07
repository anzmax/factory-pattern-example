import UIKit

class ViewController: UIViewController {
    
    lazy var circleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Circle", for: .normal)
        button.setTitleColor(.defaultColor, for: .normal)
        button.addTarget(self, action: #selector(circleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var squareButton: UIButton = {
        let button = UIButton()
        button.setTitle("Square", for: .normal)
        button.setTitleColor(.defaultColor, for: .normal)
        button.addTarget(self, action: #selector(squareButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var rectangleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Rectangle", for: .normal)
        button.setTitleColor(.defaultColor, for: .normal)
        button.addTarget(self, action: #selector(rectangleButtonTapped), for: .touchUpInside)
        return button
    }()

    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 24
        stack.distribution = .equalSpacing
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(stackView)
        stackView.addArrangedSubview(circleButton)
        stackView.addArrangedSubview(squareButton)
        stackView.addArrangedSubview(rectangleButton)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func circleButtonTapped() {
        createShape(.circle, on: view)
    }
    
    @objc func squareButtonTapped() {
        createShape(.square, on: view)
    }
    
    @objc func rectangleButtonTapped() {
        let rectangle = getShape(.rectangle, on: view)
        rectangle.display()
    }
}

