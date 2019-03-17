//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Sanip Shrestha on 3/16/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.title = detail.value(forKey: "title") as! String
            if let blogWebView = self.webView {
                blogWebView.loadHTMLString((detail.value(forKey: "content") as? String)!, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

