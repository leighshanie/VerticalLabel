//
//  VerticalLabel.swift
//  VerticalLabelSwift
//
//  Created by chocklee on 2016/12/8.
//  Copyright © 2016年 chocklee. All rights reserved.
//

import UIKit

func sizeHeightWithText(labelText: String, fontSize: CGFloat, textAttributes: [String : Any]) -> CGRect {
    return labelText.boundingRect(with: CGSize.init(width: fontSize, height: CGFloat.greatestFiniteMagnitude), options: .usesLineFragmentOrigin, attributes: textAttributes, context: nil)
}

class VerticalLabel: UILabel {
    
    var textAttributes: [String : Any]!
    
    // convenience init 方法 (相当于OC中自定义构造方法)
    convenience init(fontName: String, labelText: String, fontSize: CGFloat, lineSpacing: CGFloat) {
        
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        let font: UIFont = UIFont(name: fontName, size: fontSize)!
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        
        textAttributes = [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle]
        
        let labelSize = sizeHeightWithText(labelText: labelText, fontSize: fontSize, textAttributes: textAttributes)
        
        self.frame = CGRect(x: 0, y: 0, width: labelSize.width, height: labelSize.height)
        
        self.attributedText = NSAttributedString(string: labelText, attributes: textAttributes)
        self.lineBreakMode = .byCharWrapping
        self.numberOfLines = 0
    }
    
}
