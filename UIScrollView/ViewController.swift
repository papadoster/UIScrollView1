//
//  ViewController.swift
//  UIScrollView
//
//  Created by Marina Karpova on 04.01.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var myScrollView = UIScrollView()
    var myImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createScrollView()
        
    }
    
    
    

    //MARK: - UIScrollViewDelegate
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let p = "Начинаеться прокрутка"
        print(p)
        print(scrollView.contentOffset.y)
        myScrollView.alpha = 0.50
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let p = "вызывается после прокрутки"
        print(p)
        myScrollView.alpha = 1.0
    }

    func scrollViewDidEndDragging(_ scrolIView: UIScrollView, willDecelerate decelerate: Bool) {
        let p = "Гарантирует что вернет альфу к 1"
        print(p)
        self.myScrollView.alpha = 1.0

    }
    
    
    func createScrollView() {
        let imageToLoad = UIImage(named: "mac")
        myImageView = UIImageView(image: imageToLoad)
        myScrollView = UIScrollView(frame: view.bounds)
        myScrollView.addSubview(myImageView)
        myScrollView.contentSize = myImageView.bounds.size
        myScrollView.delegate = self
        view.addSubview(myScrollView)
    }
}

