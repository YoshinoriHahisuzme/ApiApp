//
//  ViewController.swift
//  ApiApp
//
//  Created by Yoshinori Hashizume on 2025/04/21.
//

import UIKit
import Parchment

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 切り替え画面(PagingViewController)を作成し、切り替え対象の画面を追加
        let pagingViewController = PagingViewController(viewControllers: [
            storyboard!.instantiateViewController(identifier: "ApiViewController"),
            storyboard!.instantiateViewController(identifier: "FavoriteViewController")
        ])

        // 切り替え画面(PagingViewController)をViewControllerに埋め込む
        self.addChild(pagingViewController)
        self.view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)

        // 切り替え画面のviewにAutoLayoutを設定(画面いっぱいに表示)
        let pagingView: UIView = pagingViewController.view
        let safeArea = self.view.safeAreaLayoutGuide
        pagingView.translatesAutoresizingMaskIntoConstraints = false
        pagingView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        pagingView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        pagingView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        pagingView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
 
        
    }


}

