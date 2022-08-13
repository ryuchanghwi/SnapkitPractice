//
//  FirstViewController.swift
//  snapkitPractice
//
//  Created by 류창휘 on 2022/08/09.
//

import Foundation
import UIKit
import SnapKit
import SwiftUI

class FirstViewController: UIViewController {
    
    lazy var box = UIView()
    lazy var pushButton  = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        pushButton.backgroundColor = .red
        pushButton.setTitle("푸시버튼", for: .normal)
        pushButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        
        
        
        self.view.addSubview(box)
        box.backgroundColor = .blue
        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.size.width.height.equalTo(100)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(100)
            
        }
        self.view.addSubview(pushButton)
        pushButton.snp.makeConstraints { make in
            make.top.equalTo(box.snp.bottom).offset(30)
//            make.size.width.height.equalTo(30)
//            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(100)
//            make.centerX.equalTo(self.view)
//            make.center.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        let firstDetailVC = FirstDetailViewController()
        
        navigationController?.pushViewController(firstDetailVC, animated: true)
//        self.present(firstDetailVC, animated: true, completion: nil)
    }
}


extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
            let viewController: UIViewController

            func makeUIViewController(context: Context) -> UIViewController {
                return viewController
            }

            func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            }
        }

        func toPreview() -> some View {
            Preview(viewController: self)
        }
}

struct MyViewController_PreViews: PreviewProvider {
    static var previews: some View {
        TabBarController().toPreview()
    }
}
