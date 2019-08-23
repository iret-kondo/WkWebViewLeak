//
//  SafeScriptMessageHandler.swift
//  WkWebViewLeak
//
//  Created by 近藤 寛志 on 2019/08/23.
//  Copyright © 2019 iret,Inc. All rights reserved.
//

import WebKit

class SafeScriptMessageHandler: NSObject {
    weak var handler: WKScriptMessageHandler?

    init(_ handler: WKScriptMessageHandler) {
        self.handler = handler
        super.init()
    }
}

extension SafeScriptMessageHandler: WKScriptMessageHandler {
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        self.handler?.userContentController(userContentController, didReceive: message)
    }
}
