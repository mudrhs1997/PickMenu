//
//  ViewController.swift
//  PickMenu
//
//  Created by 정명곤 on 2022/07/02.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let mainView = HomeSelectView()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "이거 먹자!"
        
        setConstraint()
        
    }
    
    func setConstraint() {
        view.addSubview(mainView)
        
        
        
        mainView.snp.makeConstraints { main in
            main.left.right.equalToSuperview()
            main.top.equalTo(view.safeAreaLayoutGuide)
            main.height.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    
}
 
