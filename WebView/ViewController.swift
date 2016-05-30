//
//  ViewController.swift
//  WebView
//
//  Created by 太田　知孝 on 2016/05/30.
//  Copyright © 2016年 太田　知孝. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate{
    var i : Int = 0

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webRequest()
        

    }
    func webRequest(){
        let myWebView : UIWebView = UIWebView()
        myWebView.delegate = self
        myWebView.frame = self.view.bounds
        self.view.addSubview(myWebView)
        let url: NSURL = NSURL(string: "https://www.yahoo.com/")!
        let request: NSURLRequest = NSURLRequest(URL: url)
        myWebView.loadRequest(request)
    }

    func webViewDidFinishLoad(webView: UIWebView) {
        i++
        print("========FINISH==========")
        print(i)
        webRequest()
        sleep(1)
    }


}

