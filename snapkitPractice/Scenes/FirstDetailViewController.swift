//
//  FirstDetailViewController.swift
//  snapkitPractice
//
//  Created by 류창휘 on 2022/08/09.
//

import Foundation
import UIKit
import SnapKit
import SwiftUI
class FirstDetailViewController : UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    
    let titleLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        self.view.addSubview(scrollView)
        
        
        self.view2.addSubview(titleLabel)
        titleLabel.text = "dsflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdksdkfjsjdflksjdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdksdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;sdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;fjdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;lsdksdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;sdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;fjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;sdkfjsjdflksjdflka;slkdfja'klsdfja;lsdkfjsjdflksjdflka;slkdfja'klsdfja;fjsjdflk"
        
        titleLabel.numberOfLines = 0
        titleLabel.backgroundColor = .white
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        scrollView.addSubview(contentView)
        
        contentView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.centerX.top.bottom.equalToSuperview()
            
        }
        
        _ = [view1, view2, view3].map { self.contentView.addSubview($0) }
        view1.backgroundColor = .red
        view2.backgroundColor = .blue
        view3.backgroundColor = .black
        
        view1.snp.makeConstraints { (make) in
            
            make.leading.top.trailing.equalToSuperview()
            make.height.equalTo(300)
        }
        
        view2.snp.makeConstraints { (make) in
            
            make.top.equalTo(view1.snp.bottom)
            make.leading.trailing.equalToSuperview()
//            make.height.equalTo(300)
        }
        
        view3.snp.makeConstraints { (make) in
            
            make.top.equalTo(view2.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(300)
//            make.bottom.equalToSuperview() // 이것이 중요함
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view2.snp.top).offset(30)
            make.leading.equalTo(view2.snp.leading).offset(40)
            make.trailing.equalToSuperview().offset(-40)
//            make.bottom.equalTo(view2.snp.bottom).offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
    }
}

struct FirstDetailViewController_PreViews: PreviewProvider {
    static var previews: some View {
        FirstDetailViewController().toPreview()
    }
}
