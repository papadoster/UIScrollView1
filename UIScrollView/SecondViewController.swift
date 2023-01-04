//
//  SecondViewController.swift
//  UIScrollView
//
//  Created by Marina Karpova on 05.01.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iphoneImage = UIImage(named: "iphone2")
        let macImage = UIImage(named: "mac")
        let ipadImage = UIImage(named: "ipad")
        
        let scrollViewRect = view.bounds
        
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.width * 3, height: scrollViewRect.height)
        view.addSubview(myScrollView)
        
        var imageViewRect = view.bounds
        let iphoneImageView = self.newImageViewWithImage(image: iphoneImage!, frame: imageViewRect)
        myScrollView.addSubview(iphoneImageView)
        
        imageViewRect.origin.x += iphoneImageView.frame.width
        let ipadImageView = self.newImageViewWithImage(image: ipadImage!, frame: imageViewRect)
        myScrollView.addSubview(ipadImageView)
        
        imageViewRect.origin.x += iphoneImageView.frame.width
        let macImageView = self.newImageViewWithImage(image: macImage!, frame: imageViewRect)
        myScrollView.addSubview(macImageView)
    }
    
    
    func newImageViewWithImage(image: UIImage, frame: CGRect) -> UIImageView {
        
        let result = UIImageView(frame: frame)
        result.contentMode = .scaleAspectFit
        result.image = image
        
        return result
    }
    
}
