//
//  testCell.swift
//  ttttt
//
//  Created by admin on 2017/4/5.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

import UIKit

import SnapKit


class testCell: UITableViewCell {


    var myLb : UILabel?
    
    var myImage : UIImageView?
    
    var  model : testModel? {
        
        didSet{
            self.setData()
        }
      
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        
        super.init(coder: aDecoder)
    }
    
    
    func setUpUI(){
        
        self.myLb = UILabel.init()
        self.myLb?.text="kkkkkkk"
        self.contentView.addSubview(myLb!)
        self.myLb?.snp.makeConstraints { (make) in
            make.left.equalTo(20);
            make.centerY.equalTo(self.contentView)
        }
        
        self.myImage = UIImageView.init()
        
        self.imageView?.backgroundColor = UIColor.red
        self.contentView.addSubview(myImage!)
        self.myImage?.snp.makeConstraints { (make) in
            make.left.equalTo(90)
            make.size.equalTo(CGSize.init(width: 20, height: 20))
            make.centerY.equalTo(myLb!)
        }
        
    }
    
    
    func setData(){
       
        self.myLb!.text = model!.name;
        self.myImage!.image = UIImage.init(named: "smile_green")
        
    }
    
    
    
    
    
    

}
