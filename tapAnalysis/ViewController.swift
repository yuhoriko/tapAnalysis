//
//  ViewController.swift
//  tapAnalysis
//
//  Created by Yuriko Kimura on 2019/07/22.
//  Copyright © 2019 Yuriko Kimura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTotalCount: UILabel!
    @IBOutlet weak var labelUreshiCount: UILabel!
    @IBOutlet weak var labelBikkuriCount: UILabel!
    @IBOutlet weak var labelUmuuCount: UILabel!
    @IBOutlet weak var labelUreshiPercent: UILabel!
    @IBOutlet weak var labelBikkuriPercent: UILabel!
    @IBOutlet weak var labelUmuuPercent: UILabel!
    @IBOutlet weak var buttonUreshi: UIButton!
    @IBOutlet weak var buttonBikkuri: UIButton!
    @IBOutlet weak var ButtonUmuu: UIButton!
    
    @IBOutlet weak var buttonReset: UIButton!
    
    //タップした数を数える（合計）
    var totalCount:Int = 0
    
    //タップした数を数える（うれしい）
    var ureshiCount:Int = 0
    var ureshiPercent:Double = 0.0
    var ureshiRound:Double = 0.0
    
    //タップした数を数える（びっくり）
    var bikkuriCount:Int = 0
    var bikkuriPercent:Double = 0.0
    var bikkuriRound:Double = 0.0
    
    //タップした数を数える（えー）
    var umuuCount:Int = 0
    var umuuPercent:Double = 0.0
    var umuuRound:Double = 0.0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapUreshi(_ sender: Any) {
        ureshiCount = ureshiCount + 1
        totalCountCal()
    }
    
    @IBAction func tapBIkkuri(_ sender: Any) {
        bikkuriCount = bikkuriCount + 1
        totalCountCal()
    }
    
    @IBAction func tapUmuu(_ sender: Any) {
        umuuCount = umuuCount + 1
        totalCountCal()
    }
    
    @IBAction func tapReset(_ sender: Any) {
        //カウント数リセット
        totalCount = 0
        ureshiCount = 0
        bikkuriCount = 0
        umuuCount = 0
        
        //パーセンテージリセット
        ureshiPercent = 0.0
        bikkuriPercent = 0.0
        umuuPercent = 0.0
        
        //表示リセット（カウント数）
        labelTotalCount.text = ""
        labelUreshiCount.text = ""
        labelBikkuriCount.text = ""
        labelUmuuCount.text = ""
        
        //表示リセット（パーセンテージ）
        labelUreshiPercent.text = ""
        labelBikkuriPercent.text = ""
        labelUmuuPercent.text = ""
        
    }
    
    
    
    func totalCountCal(){
        totalCount = ureshiCount + bikkuriCount + umuuCount
        
        labelTotalCount.text = "\(totalCount)回"
        labelUreshiCount.text = "\(ureshiCount)回"
        labelBikkuriCount.text = "\(bikkuriCount)回"
        labelUmuuCount.text = "\(umuuCount)回"
        
        //%の計算（嬉）
        ureshiPercent = Double(ureshiCount)/Double(totalCount) * 100.0
        //小数点第二位四捨五入
        ureshiRound = round(ureshiPercent*10)/10
        //%の計算（驚）
        bikkuriPercent = Double(bikkuriCount)/Double(totalCount) * 100.0
        //小数点第二位四捨五入
        bikkuriRound = round(bikkuriPercent*10)/10
        //%の計算（驚）
        umuuPercent = Double(umuuCount)/Double(totalCount) * 100.0
        //小数点第二位四捨五入
        umuuRound = round(umuuPercent*10)/10
        
        
        
        
        labelUreshiPercent.text = "\(ureshiRound)%"
        labelBikkuriPercent.text = "\(bikkuriRound)%"
        labelUmuuPercent.text = "\(umuuRound)%"
    }
    
    
}

