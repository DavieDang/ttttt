//
//  testTableViewViewController.swift
//  ttttt
//
//  Created by admin on 2017/4/5.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

import UIKit


class testTableViewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var tableView = UITableView()
    
    class model1: testModel {
        
         override init() {
            super.init()
            self.name = "一直"
            self.imageName = "smile_green"
        }
    }
    
    class model2: testModel {
        
         override init() {
            super.init()
            self.name = "好心"
            self.imageName = "smile_green"
        }
    }
    
    class model3: testModel {
        
         override init() {
            super.init()
            self.name = "下班"
            self.imageName = "smile_green"
        }
    }
   
    
    
    
    var dataSourceff = [model1(),model2(),model3()] as [Any]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view?.backgroundColor = UIColor.white;
        self.title = "测试"
        
        self.setUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setUI(){
        
        self.tableView = UITableView.init(frame: self.view.frame, style: UITableViewStyle.plain)
        self.tableView.register(testCell.self, forCellReuseIdentifier: "testCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.view.addSubview(self.tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dataSourceff.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = testCell.init(style: UITableViewCellStyle.subtitle, reuseIdentifier: "testCell")
        
        cell.model = self.dataSourceff[indexPath.row] as? testModel;
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("选择了\(indexPath.row)行")
        
    }
    

}
