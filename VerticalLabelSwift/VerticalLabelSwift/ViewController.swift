//
//  ViewController.swift
//  VerticalLabelSwift
//
//  Created by chocklee on 2016/12/8.
//  Copyright © 2016年 chocklee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Wyue-GutiFangsong-NC
        // TpldKhangXiDictTrial
        
//        let labelText = "竖排文字"
//        let fontSize: CGFloat = 22.0
//        let font = UIFont(name: "TpldKhangXiDictTrial", size: fontSize)
//        let textAttributes = [NSFontAttributeName : font]
//        let labelSize = self.sizeHeightWithText(labelText: labelText, fontSize: fontSize, textAttributes: textAttributes)
//        let label = UILabel.init(frame: labelSize)
//        label.attributedText = NSAttributedString(string: labelText, attributes: textAttributes)
//        label.lineBreakMode = .byCharWrapping
//        label.numberOfLines = 0
//        view.addSubview(label)
        
        let verticalLabel: VerticalLabel = VerticalLabel(fontName: "Wyue-GutiFangsong-NC", labelText: "竖排文字", fontSize: 22.0, lineSpacing: 3.0)
        let labelSize = verticalLabel.frame.size
        verticalLabel.frame = CGRect.init(x: 40, y: 40, width: labelSize.width, height: labelSize.height)
        view.addSubview(verticalLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sizeHeightWithText(labelText: String, fontSize: CGFloat, textAttributes: [String : Any]) -> CGRect {
        return labelText.boundingRect(with: CGSize.init(width: fontSize, height: CGFloat.greatestFiniteMagnitude), options: .usesLineFragmentOrigin, attributes: textAttributes, context: nil)
    }

}

