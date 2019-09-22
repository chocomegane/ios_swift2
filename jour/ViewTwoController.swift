//
//  ViewTwoController.swift
//  jour
//
//  Created by yuki.sawamura on 2019/08/11.
//  Copyright © 2019年 yusawamu. All rights reserved.
//

import UIKit
import WebKit

class ViewTwoController: UIViewController {

    @IBOutlet weak var wevView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // URL設定
        let urlString = "https://www.google.com/"
        let encodedUrlString = urlString.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        
        let url = NSURL(string: encodedUrlString!)
        let request = NSURLRequest(url: url! as URL)
        
        wevView.load(request as URLRequest)
        
        self.view.addSubview(wevView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func `return`(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
