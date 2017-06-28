//
//  ViewController.swift
//  Project-6b-Autolayout-VFL
//
//  Created by Zhan Hui Hoe on 6/28/17.
//  Copyright © 2017 evanzhoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.text = "Box 1"
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.green
        
        
        let label2 = UILabel()
        label2.text = "Box 2"
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.orange
        
        let label3 = UILabel()
        label3.text = "Box 3"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        
        let label4 = UILabel()
        label3.text = "Box 4"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.blue
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        

        
        
//        ===========================Check here!=================================
        

        
        
//      anchor needs to use UILabel unwrapped
        var previous: UILabel!

//        //create anchor for each label where each label anchor to the bottom of the previous label
        for label in [label1, label2,label3, label4] {

////        use constraint with NSLayoutDimension attribute to use view.widthAnchor
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
//
            if previous != nil {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor).isActive = true
            }
            previous = label
            //REMEMBER to always .isActive = true --> Activate anchor!
        }
    }
//      ======================================================

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //
    //        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4]
    
    //        another way of constraining
    //        view.addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label1]|", options: [], metrics: nil, views: viewsDictionary))
    
    //        for label in viewsDictionary.keys {
    //
    //            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
    //        }
    //
    //
    //        let metric = ["labelHeight": 88]
    //
    //        space is 10 points by default
    //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]->=10-|", options: [], metrics: metric, views: viewsDictionary))
    
    //        print("viewsDictionary: ", viewsDictionary.values)
    //        
    

}

