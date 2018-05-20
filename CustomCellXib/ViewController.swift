//
//  ViewController.swift
//  CustomCellXib
//
//  Created by developersancho on 20.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
}


class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    var identites = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [cellData.init(cell: 1, text: "jadskak", image: #imageLiteral(resourceName: "portal")),
                           cellData.init(cell: 2, text: "kjsdakdjs", image: #imageLiteral(resourceName: "portal")),
                           cellData.init(cell: 1, text: "kjsdajkadna", image: #imageLiteral(resourceName: "portal"))]
        
        identites = ["A","B","A"]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        } else if arrayOfCellData[indexPath.row].cell == 2 {
            let cell2 = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            cell2.headerImageView2.image = arrayOfCellData[indexPath.row].image
            cell2.headerLabel2.text = arrayOfCellData[indexPath.row].text
            
            return cell2
        } else {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
            return 166
        } else if arrayOfCellData[indexPath.row].cell == 2 {
            return 80
        } else {
            return 166
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identites[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
    }
    
    
}










