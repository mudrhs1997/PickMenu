//
//  HomeSelectView.swift
//  PickMenu
//
//  Created by 정명곤 on 2022/07/13.
//

import UIKit
import SnapKit

class HomeSelectView: UIView {
    
    private let button1: UIButton = {
        let button = UIButton()
        let btnImage = UIImage(named: "bbq")
        button.layer.shadowColor = UIColor.black.cgColor
        button.setImage(btnImage, for: .normal)
        button.alpha = 0.3
        button.sizeToFit()
        return button
    }()
    
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "종류별로 고르기"
        return label
    }()
    
    private let button2: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "pizza"), for: .normal)
        button.alpha = 0.3
        return button
    }()
    
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "종류별로 고르기"
        return label
    }()
    
    private let button3: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "bossam"), for: .normal)
        button.alpha = 0.3
        return button
    }()
    
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "종류별로 고르기"
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(button1)
        addSubview(label1)
        addSubview(button2)
        addSubview(label2)
        addSubview(button3)
        addSubview(label3)
        
        
        button1.snp.makeConstraints { btn in
            btn.left.equalToSuperview().offset(10)
            btn.right.equalToSuperview().offset(-10)
            btn.top.equalToSuperview().offset(5)
            btn.height.equalTo((self.bounds.height)/3-10)
        }
        
        button1.layer.cornerRadius = 8
        button1.clipsToBounds = true
        
        label1.snp.makeConstraints { lab in
            lab.center.equalTo(button1.snp.center)
        }
        
        
        button2.snp.makeConstraints { btn in
            btn.left.equalToSuperview().offset(10)
            btn.right.equalToSuperview().offset(-10)
            btn.top.equalTo(button1.snp.bottom).offset(10)
            btn.height.equalTo(self.bounds.height/3-10)
        }
        
        button2.layer.cornerRadius = 8
        button2.clipsToBounds = true
        
        label2.snp.makeConstraints { lab in
            lab.center.equalTo(button2.snp.center)
        }
        
        button3.snp.makeConstraints { btn in
            btn.left.equalToSuperview().offset(10)
            btn.right.equalToSuperview().offset(-10)
            btn.top.equalTo(button2.snp.bottom).offset(10)
            btn.height.equalTo(self.bounds.height/3-10)
        }
        
        button3.layer.cornerRadius = 8
        button3.clipsToBounds = true
        
        label3.snp.makeConstraints { lab in
            lab.center.equalTo(button3.snp.center)
        }
        
    }

    
}
