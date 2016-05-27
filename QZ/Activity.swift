//
//  Activity.swift
//  QZ
//
//  Created by ios on 16/5/22.
//  Copyright © 2016年 北京校酷网络科技有限公司. All rights reserved.
//

import UIKit
class Activity: UITableViewController {
   
    let tetarray = ["fdsfdsfdsafdsafdsfdsagdsfbgdfhngynytnbgtntnrtnbrtnbtrbnrtbrtbtrgbgrtfbbghjgjgjgjgjgjugjbgjubgjlbjbhhnkljnkjlhnkljhnkjlbkjlbjklbjklbjklbjklbjklbguyguygyugyyuguyguvuyvhuyvuyvhuyvuhyvuhyvhuyvhuyvuhvhuvhuvhuyjvhuvhvhukvhuvhuvhuvhujvhuvuhyvuhyvuyuhyvhuvhuvuhvhuvhjuvhujvhjuvhuvhuvhjuvhjuvhuvytcfrdrtserserzzdxfgtdxtydtydtysxyrasrtazrtsrtstudtukeduyrduydftydtydty"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        self.navigationController?.navigationBar.barTintColor = UIColor.purpleColor()
        
    }
    
    func zanButtonAction(Btn:UIButton)
    {
        let cell = (Btn.superview?.superview)!
        let Path = self.tableView.indexPathForCell((cell as! ActivityCell))
        
        print("点赞行标为" , Path?.row)
    }
    
    func commentButtonAction(Btn:UIButton)
    {
        print("评论")
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let zanBtn = UIButton()
        zanBtn.setTitle("点赞", forState: UIControlState.Normal)
        zanBtn.addTarget(self, action: #selector(self.zanButtonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        let comBtn = UIButton()
        comBtn.setTitle("评论", forState: UIControlState.Normal)
        comBtn.addTarget(self, action: #selector(self.commentButtonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        let cell:ActivityCell = ActivityCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "Activity", pictureArray: [UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!,UIImage.init(named: "homepage_p4.jpg")!],Button:[zanBtn,comBtn])
        cell.textLable.text = tetarray[0]
        cell.sign.text = tetarray[0]
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.tableView.cellHeightForIndexPath(indexPath, cellContentViewWidth: self.view.frame.width, tableView: self.tableView)
    }
}
