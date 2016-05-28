//
//  ActivityCell.swift
//  QZ
//
//  Created by ios on 16/5/22.
//  Copyright © 2016年 北京校酷网络科技有限公司. All rights reserved.
//

import UIKit
class ActivityCell: UITableViewCell {
    let userImageView = UIImageView()
    let textLa = UILabel()
    var pictureView:collectionPictures?
    let sign = UILabel()
    var pictures = UIView()
    var zanButton = UIButton()
    var commentButton = UIButton()
    var textFieldForCell = UITextField()
    var commentArray:[String] = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?,pictureArray:[UIImage],Button:[UIButton],TextField:UITextField) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        userImageView.backgroundColor = UIColor.redColor()
        textLa.backgroundColor = UIColor.blueColor()
        sign.backgroundColor = UIColor.grayColor()
        pictures = collectionPictures.init(imagesArray: pictureArray)
        
        self.contentView.sd_addSubviews([userImageView,textLa,sign,pictures,Button[0],Button[1],TextField])
        
        userImageView.sd_layout()
        .topSpaceToView(self.contentView,10)
        .leftSpaceToView(self.contentView,10)
        .heightIs(50)
        .widthIs(50)
        
        sign.sd_layout()
        .heightIs(50)
        .rightSpaceToView(self.contentView,10)
        .leftSpaceToView(userImageView,5)
        .topSpaceToView(self.contentView,10)
        
        
        textLa.sd_layout()
        .topSpaceToView(userImageView,5)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .autoHeightRatio(0)
        textLa.setMaxNumberOfLinesToShow(7)
        
        switch pictureArray.count {
        case 1:
        pictures.sd_layout()
        .autoHeightRatio(0.5)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 2:
        pictures.sd_layout()
        .autoHeightRatio(0.5)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 3:
        pictures.sd_layout()
        .autoHeightRatio(0.4)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 3:
        pictures.sd_layout()
        .autoHeightRatio(0.4)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 4:
        pictures.sd_layout()
        .autoHeightRatio(2 / 3)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 5:
        pictures.sd_layout()
        .autoHeightRatio(2 / 3)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 6:
        pictures.sd_layout()
        .autoHeightRatio(2 / 3)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 7:
        pictures.sd_layout()
        .autoHeightRatio(1)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 8:
        pictures.sd_layout()
        .autoHeightRatio(1)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        case 9:
        pictures.sd_layout()
        .autoHeightRatio(1)
        .leftSpaceToView(self.contentView,10)
        .rightSpaceToView(self.contentView,10)
        .topSpaceToView(textLa,5)
        default:
            print("超出范围")
        }
        
        Button[1].sd_layout()
        .topSpaceToView(pictures,5)
        .rightSpaceToView(self.contentView,10)
        .widthIs(50)
        .heightIs(30)
        
        Button[0].sd_layout()
        .rightSpaceToView(Button[1],5)
        .topEqualToView(Button[1])
        .widthIs(50)
        .heightIs(30)
        Button[1].backgroundColor = UIColor.blueColor()
        Button[0].backgroundColor = UIColor.blueColor()
        
        TextField.sd_layout()
        .topSpaceToView(Button[0],5)
        .rightSpaceToView(self.contentView,10)
        .leftSpaceToView(self.contentView,10)
        .heightIs(20)
        textFieldForCell = TextField
        TextField.backgroundColor = UIColor.redColor()
        self.setupAutoHeightWithBottomViewsArray([TextField], bottomMargin: 10)
        
    }
    
    
        
}
