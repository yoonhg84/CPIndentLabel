//
//  ViewController.swift
//  CPIndentLabel
//
//  Created by Chope on 2016. 3. 29..
//  Copyright (c) 2016 Chope. All rights reserved.
//


import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var label: CPIndentLabel? = nil

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

//        self.label?.text = "Initialization:\n" +
//"    initWithFrame: - It is recommended that you implement this method. You can also implement custom initialization methods in addition to, or instead of, this method.\n" +
//"    initWithCoder: - Implement this method if you load your view from an Interface Builder nib file and your view requires custom initialization.\n" +
//"    layerClass - Implement this method only if you want your view to use a different Core Animation layer for its backing store. For example, if your view uses tiling to display a large scrollable area, you might want to override this method and return the CATiledLayer class.\n" +
//"\n" +
//"Drawing and printing:\n" +
//"    drawRect: - Implement this method if your view draws custom content. If your view does not do any custom drawing, avoid overriding this method.\n" +
//"    drawRect:forViewPrintFormatter: - Implement this method only if you want to draw your view’s content differently during printing.\n"
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
}
