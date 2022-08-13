//
//  ViewController.swift
//  snapkitPractice
//
//  Created by 류창휘 on 2022/08/09.
//

import UIKit
import SnapKit
class TabBarController: UITabBarController {
    private lazy var firstViewController: UIViewController = {
        let viewController = FirstViewController()
        let tabBarItem = UITabBarItem(title: "첫번쨰 텝", image: UIImage(systemName: "mail"), tag: 0)
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    private lazy var secondViewController : UIViewController = {
        let viewController = SecondViewController()
        let tabBarItem = UITabBarItem(title: "두번째 탭", image: UIImage(systemName: "square.stack.3d.up"), tag: 1)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var thirdViewController : UIViewController = {
        let viewController = ThirdViewController()
        let tabBarItem = UITabBarItem(title: "세번쨰 탭", image: UIImage(systemName: ""), tag: 2)
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewControllers = [firstViewController, secondViewController, thirdViewController]
    }


}
