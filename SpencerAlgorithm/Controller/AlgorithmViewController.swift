//
//  ViewController.swift
//  SpencerAlgorithm
//
//  Created by Billings, Spencer on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmController : UIViewController
{
    @IBOutlet weak var swiftImage: UIImageView!
    
    @IBOutlet weak var algorithmText: UILabel!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }

    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func formatAlgorithm() -> Void
    {
        let title : String = "App Creation Algorithm"
        
        let stepOne : String = "Begin by choosing the single view project option"
        let stepTwo : String = "Organize the playground’s files into three folders: View, Resources, and Controller"
        let stepThree : String = "Relocate your Info.plist file"
        let stepFour : String = "Make sure all methods are specified as public and all functions return Void"
        let stepFive : String = "Push to GitHub"
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributesStringKey.font : algorithmText.font]
        let fullAttributesString = NSMutableAttributeString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🅱️"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let outlineStyle = createOutlineSytle()
            
            attributedStringStep.addAttributes([NSAttributeString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
    
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}

