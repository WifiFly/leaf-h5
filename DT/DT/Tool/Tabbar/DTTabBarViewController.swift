//
//  DTTabBarViewController.swift
//  DT
//
//  Created by Ye Keyon on 2020/6/30.
//  Copyright © 2020 dt. All rights reserved.
//

import UIKit

class DTTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let linkVC = DTNavigationViewController(rootViewController: DTLinkViewController())
//        let searchVC = getInstantVC(storyName: "DTSearch")
        let mineVC = DTNavigationViewController(rootViewController: DTMineViewController())
        resetVCTabBarItem(vc: linkVC, title: "连接", unSelectImage: #imageLiteral(resourceName: "icon_tab_link_unselect"), selectImage: #imageLiteral(resourceName: "icon_tab_link_select"))
        resetVCTabBarItem(vc: mineVC, title: "我的", unSelectImage: #imageLiteral(resourceName: "icon_tab_mine_unselect"), selectImage: #imageLiteral(resourceName: "icon_tab_mine_select"))
        self.tabBar.backgroundImage = UIImage.dt.imageWithColor(color: UIColor.dt.hex("#001E36"))
        self.tabBar.shadowImage = UIImage.dt.imageWithColor(color: APPColor.colorSubBgView)
        self.addChild(linkVC)
//        self.addChild(searchVC)
        self.addChild(mineVC)
        #if DEBUG
        let debugBtn = DTDebugButton(frame: CGRect(x: self.view.frame.width - 54, y: (self.view.frame.height - 44) / 2.0, width: 44, height: 44));
        self.view.addSubview(debugBtn)
        #endif
    }
    
    func resetVCTabBarItem(vc:UIViewController,title:String,unSelectImage:UIImage?,selectImage:UIImage?) {
        vc.tabBarItem.title = title
        vc.tabBarItem.image = unSelectImage?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = selectImage?.withRenderingMode(.alwaysOriginal)
        if #available(iOS 13.0, *) {
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
            UITabBar.appearance().tintColor = APPColor.color00B170
        } else {
            vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .normal)
            vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:APPColor.color00B170], for: .selected)
        }
    }
    
}
