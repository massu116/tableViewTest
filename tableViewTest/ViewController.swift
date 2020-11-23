//
//  ViewController.swift
//  tableViewTest
//
//  Created by massu_fun on 2020/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var appealTable: UITableView!
    
    var ID = ["001", "002"]
    var name = ["イカ", "ブリ"]
    var Icon = ["ika", "yellowfish"]
    var food = ["ikaring", "sashimi"]
    var foodName = ["イカリング", "刺身"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appealTable.delegate = self
        appealTable.dataSource = self
    }
    
    //テーブルのセクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //テーブルの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    //テーブル1行ごとの設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.appealTable.dequeueReusableCell(withIdentifier: "appealCell", for: indexPath) as! appealTableViewCell
        
        cell.fishIcon.image = UIImage(named: self.Icon[indexPath.row])
        cell.foodImage.image = UIImage(named: self.food[indexPath.row])
        cell.fishID.text = self.ID[indexPath.row]
        cell.fishName.text = self.name[indexPath.row]
        //cell.fishComment.image = UIImage(named: "fishCooment")
        cell.foodName.text = self.foodName[indexPath.row]
        cell.foodName?.textAlignment = .center
        
        cell.fishIcon.layer.cornerRadius = 50
        cell.foodImage.layer.cornerRadius = 10
        return cell
    }


}

