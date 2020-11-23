//
//  ViewController.swift
//  UiPractice
//
//  Created by 김믿음 on 2020/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.newView())

    }

private func newView() -> UIView {
    let view = UIView(frame: CGRect(x: 100,
                                    y: 100,
                                    width: 100,
                                    height: 100))
    view.backgroundColor = .systemBlue
    // 그림자 넣으려는 view를 중심으로 몇만큼 떨어지게 할건지 지정.
    view.layer.shadowOffset = CGSize(width: 10,
                                      height: 10)
    // 그림자의 모서리 radius
    view.layer.shadowRadius = 5
    
    // 그림자의 불투명도
    view.layer.shadowOpacity = 0.2
    view.clipsToBounds = false
    view.layer.cornerRadius = 10

        
    return view
}

}

