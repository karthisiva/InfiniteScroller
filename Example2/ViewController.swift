//
//  ViewController.swift
//  Example2
//
//  Created by Lukasz Mroz on 11.12.2015.
//  Copyright © 2015 Droids on Roids. All rights reserved.
//

import UIKit
import SwiftCarousel

class ViewController: UIViewController {

    var carouselView: SwiftCarousel!
    var choices: [UIView]!
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let carouselFrame = CGRect(x: view.center.x - 200.0, y: view.center.y - 100.0, width: 400.0, height: 200.0)
        carouselView = SwiftCarousel(frame: carouselFrame)
        try! carouselView.itemsFactory(itemsCount: 5) { choice in
            let imageView = UIImageView(image: UIImage(named: "puppy\(choice+1)"))
            imageView.frame = CGRect(origin: .zero, size: CGSize(width: 200.0, height: 200.0))
            
            return imageView
        }
//        carouselView.resizeType = .withoutResizing(10.0)
        carouselView.delegate = self
        carouselView.defaultSelectedIndex = 2
        view.addSubview(carouselView)
        
        let labelFrame = CGRect(x: view.center.x - 150.0, y: carouselFrame.minY - 40.0, width: 300.0, height: 20.0)
        label = UILabel(frame: labelFrame)
        label.text = ""
        label.textColor = .black
        label.textAlignment = .center
        view.addSubview(label)
        
        let titleFrame = CGRect(x: view.center.x - 150.0, y: 60.0, width: 300.0, height: 24.0)
        let title = UILabel(frame: titleFrame)
        title.text = "Puppy selector 🐶🐱"
        title.font = .systemFont(ofSize: 24.0)
        title.textColor = .black
        title.textAlignment = .center
        
        view.addSubview(title)
    }
}

extension ViewController: SwiftCarouselDelegate {
    func didSelectItem(item: UIView, index: Int, tapped: Bool) -> UIView? {
    print(index < 2 ? "🐶 number \(index+1) won! Woof woof 🐶" : "🐱 number \(index - 1) won! Meeeeeeow 🐱")
    item.backgroundColor = UIColor.yellow
    
        return item
    }

    private func didSelectItem(item: UIView, index: Int) -> UIView? {
        label.text = index < 2 ? "🐶 number \(index+1) won! Woof woof 🐶" : "🐱 number \(index - 1) won! Meeeeeeow 🐱"
        item.backgroundColor = UIColor.black
        return nil
    }
    
    func willBeginDragging(withOffset offset: CGPoint) {
        label.text = "Searching for some love..."
    }
}
