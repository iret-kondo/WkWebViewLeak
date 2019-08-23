//
//  LeakWebViewController.swift
//  WkWebViewLeak
//
//  Created by 近藤 寛志 on 2019/08/23.
//  Copyright © 2019 iret,Inc. All rights reserved.
//

import UIKit
import WebKit

class LeakWebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: "https://www.google.co.jp")!)
        webView.load(request)
        webView.configuration.userContentController.add(self, name: "dummy")
    }
    
    deinit {
        print("\(self) deinit")
    }
}

extension LeakWebViewController: WKScriptMessageHandler {
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print("userContentController message: \(message)")
    }
}
