//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Private Fields
    
    private var _textField: UITextField!

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // TextFieldの設定
        self.setupTextField()
    }
    
    /// TextFieldの設定
    private func setupTextField() {
        
        let textFieldSize = CGSize(width: 200, height: 30)
        
        _textField = UITextField(frame: CGRect(origin: CGPoint.zero, size: textFieldSize))
        _textField.center = self.view.center
        
        _textField.delegate = self;
        
        // 枠の表示設定
        _textField.borderStyle = .roundedRect
        // 編集中にクリアボタン表示
        _textField.clearButtonMode = .whileEditing
        
        self.view.addSubview(_textField)
        
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function + ": \(textField.text ?? "")")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function + ": \(textField.text ?? "")")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function + ": \(textField.text ?? "")")
        
        // Returnでキーボードを非表示
        textField.resignFirstResponder()
        
        return true;
    }

}

