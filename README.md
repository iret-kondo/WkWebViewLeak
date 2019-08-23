# WkWebViewLeak

WKUserContentControllerはWKScriptMessageHandlerを強参照しています。  
使い方を調べた際に出てくる方法そのまま使うとleakしてしまうため、  
leakを回避するサンプル作成。

## require

Xcode 10.2.1~
iOS 11.0~
