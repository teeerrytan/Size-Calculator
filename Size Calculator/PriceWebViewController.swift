//
//  PriceWebViewController.swift
//  Size Calculator
//
//  Created by Terry Tan on 2018/7/12.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit
import WebKit

class PriceWebViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var priceWebView: WKWebView!
    @IBOutlet weak var priceWebIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        priceWebView.navigationDelegate = self
        if var url = URL(string: "https://hq.smm.cn/lv"){
            var request = URLRequest(url: url)
            priceWebView.load(request)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        priceWebIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        priceWebIndicator.stopAnimating()
    }

}
