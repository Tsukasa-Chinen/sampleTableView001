//
//  ViewController.swift
//  sampleTableView001
//
//  Created by Tsukasa Chinen on 2017/10/30.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit
/* 1. プロトコルの設定（ DataSource, Delegate ） */
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    /* Table View */
    @IBOutlet weak var myTableView: UITableView!
    var teaList = [
         "ダージリン"
        ,"アールグレイ"
        ,"アッサム"
        ,"オレンジペコ"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        /* Storyboadで設定する（Pickerviewの時はプログラムで指定） */
        /* 4. TableViewに指示を出すのがViewControllerだと設定する */
        myTableView.delegate = self
        myTableView.dataSource = self

    }

    /* 2. 行数の設定 */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var retValue = 0
//        if(section == 0){
//            retValue = 10
//        }else{
//            retValue = 20
//        }
//        return retValue

        return teaList.count
    }

    /* 3. リストに表示する文字列を決定し表示 */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* 文字を表示するセルの取得 */
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        /* 表示したい文字の設定 （行数の設定で指定した数だけループされる）　*/
        cell.textLabel?.text = teaList[indexPath.row]
        cell.textLabel?.textColor = UIColor.blue
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator

        /* 文字を設定したセルを返す */
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

