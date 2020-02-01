//
//  APPColorScheme.swift
//  DarkModeDemoSwift
//
//  Created by Xueliang Chen on 2/1/20.
//  Copyright © 2020 ChienErrant. All rights reserved.
//

import Foundation
import UIKit

class APPColorScheme{
    
    static func colorWithDarkMode(darkColor:UIColor,lightColor:UIColor)->UIColor{
        
        var color:UIColor? = nil
        if #available(iOS 13.0, *){
            color = UIColor.init(dynamicProvider: { (traitCollection) -> UIColor in
                if(traitCollection.userInterfaceStyle == .dark){
                    return darkColor
                }
                else{
                    return lightColor
                }
            })
        }
        else{
            color = lightColor
        }
        
        return color!
    }
    
    static var colorBlue:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x429fde), lightColor: UIColor(rgb: 0x0097ff))
    }
    static var colorOrange:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0xce6647), lightColor: UIColor(rgb: 0xff7850))
    }
    static var colorGreen:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x9aca52), lightColor: UIColor(rgb: 0xb9ff50))
    }
    static var colorWhite:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x000000), lightColor: UIColor(rgb: 0xffffff))
    }
    static var colorGrayLighter:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x262626), lightColor: UIColor(rgb: 0xe5e5e5))
    }
    static var colorGrayLight:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x3a3a3c), lightColor: UIColor(rgb: 0xcccccc))
    }
    static var colorGrayNormal:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x666666), lightColor: UIColor(rgb: 0x999999))
    }
    static var colorGrayHeavy:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x999999), lightColor: UIColor(rgb: 0x666666))
    }
    static var colorGrayHeavier:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0xcccccc), lightColor: UIColor(rgb: 0x333333))
    }
    static var colorBlack:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0xffffff), lightColor: UIColor(rgb: 0x000000))
    }
    static var colorForeground:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x1a1a1a), lightColor: UIColor(rgb: 0xffffff))
    }
    static var colorBackground:UIColor{
        return self.colorWithDarkMode(darkColor: UIColor(rgb: 0x000000), lightColor: UIColor(rgb: 0xf7f7f7))
    }
    
}
