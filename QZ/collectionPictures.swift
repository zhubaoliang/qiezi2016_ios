//
//  collectionPictures.swift
//  QZ
//
//  Created by ios on 16/5/25.
//  Copyright © 2016年 北京校酷网络科技有限公司. All rights reserved.
//

import UIKit
class collectionPictures: UIView {
    var cFrame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width - 20, UIScreen.mainScreen().bounds.width - 20)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(imagesArray:[UIImage]) {
        cFrame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width - 20, UIScreen.mainScreen().bounds.width - 20)
        super.init(frame: cFrame)
        self.backgroundColor = UIColor.redColor()
        switch imagesArray.count {
        case 1:
            
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 2, self.frame.width  / 2 )
            self.addSubview(image0)
        case 2:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 2 - 5, self.frame.width  / 2 - 5)
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 2 + 5,0 , self.frame.width  / 2 - 5, self.frame.width  / 2 - 5)
            self.addSubview(image1)
        case 3:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
        case 4:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
        case 5:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
            let image4 = UIImageView()
            image4.image = imagesArray[4]
            image4.frame = CGRectMake(self.frame.width  / 3 ,self.frame.width  / 3 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image4)
            
        case 6:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
            let image4 = UIImageView()
            image4.image = imagesArray[4]
            image4.frame = CGRectMake(self.frame.width  / 3 ,self.frame.width  / 3 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image4)
            let image5 = UIImageView()
            image5.image = imagesArray[5]
            image5.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,self.frame.width  / 3 , self.frame.width  / 3 - 1  , self.frame.width  / 3 - 1)
            self.addSubview(image5)
            
        case 7:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
            let image4 = UIImageView()
            image4.image = imagesArray[4]
            image4.frame = CGRectMake(self.frame.width  / 3 ,self.frame.width  / 3 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image4)
            let image5 = UIImageView()
            image5.image = imagesArray[5]
            image5.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,self.frame.width  / 3 , self.frame.width  / 3 - 1  , self.frame.width  / 3 - 1)
            self.addSubview(image5)
            let image6 = UIImageView()
            image6.image = imagesArray[6]
            image6.frame = CGRectMake(0, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image6)
        case 8:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
            let image4 = UIImageView()
            image4.image = imagesArray[4]
            image4.frame = CGRectMake(self.frame.width  / 3 ,self.frame.width  / 3 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image4)
            let image5 = UIImageView()
            image5.image = imagesArray[5]
            image5.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,self.frame.width  / 3 , self.frame.width  / 3 - 1  , self.frame.width  / 3 - 1)
            self.addSubview(image5)
            let image6 = UIImageView()
            image6.image = imagesArray[6]
            image6.frame = CGRectMake(0, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image6)
            let image7 = UIImageView()
            image7.image = imagesArray[7]
            image7.frame = CGRectMake(self.frame.width / 3, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image7)
        case 9:
            let image0 = UIImageView()
            image0.image = imagesArray[0]
            image0.frame = CGRectMake(0, 0, self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image0)
            let image1 = UIImageView()
            image1.image = imagesArray[1]
            image1.frame = CGRectMake(self.frame.width  / 3 ,0 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image1)
            let image2 = UIImageView()
            image2.image = imagesArray[2]
            image2.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,0 , self.frame.width  / 3 - 1, self.frame.width  / 3 - 1)
            self.addSubview(image2)
            let image3 = UIImageView()
            image3.image = imagesArray[3]
            image3.frame = CGRectMake(0, self.frame.width  / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image3)
            let image4 = UIImageView()
            image4.image = imagesArray[4]
            image4.frame = CGRectMake(self.frame.width  / 3 ,self.frame.width  / 3 , self.frame.width  / 3 , self.frame.width  / 3 - 1)
            self.addSubview(image4)
            let image5 = UIImageView()
            image5.image = imagesArray[5]
            image5.frame = CGRectMake(self.frame.width  * 2 / 3 + 1,self.frame.width  / 3 , self.frame.width  / 3 - 1  , self.frame.width  / 3 - 1)
            self.addSubview(image5)
            let image6 = UIImageView()
            image6.image = imagesArray[6]
            image6.frame = CGRectMake(0, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image6)
            let image7 = UIImageView()
            image7.image = imagesArray[7]
            image7.frame = CGRectMake(self.frame.width / 3, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image7)
            let image8 = UIImageView()
            image8.image = imagesArray[8]
            image8.frame = CGRectMake(self.frame.width * 2 / 3, self.frame.width * 2 / 3 , self.frame.width  / 3 - 1 , self.frame.width  / 3 - 1 )
            self.addSubview(image8)


        default:
            print("超出范围")
        }
    }
}
