//
// Created by Chope on 2016. 3. 29..
// Copyright (c) 2016 Chope. All rights reserved.
//

import UIKit

class CPIndentLabel: UILabel {
    override var text: String? {
        didSet {
            self.applyIndent()
        }
    }

    var contentInsets: UIEdgeInsets = UIEdgeInsetsZero
    var indent: CGFloat = 30.0
    var firstLineHeaderIndent: CGFloat = 10.0

    var titleFont = UIFont.boldSystemFontOfSize(17)
    var titleColor = UIColor.blackColor()
    var descriptionFont = UIFont.systemFontOfSize(14)
    var descriptionColor = UIColor.darkGrayColor()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.applyIndent()
    }

    func applyIndent() {
        guard let text = self.text else { return }

        let indentParagraphStyle = NSMutableParagraphStyle()
        indentParagraphStyle.headIndent = self.indent
        indentParagraphStyle.firstLineHeadIndent = self.indent + self.firstLineHeaderIndent
        indentParagraphStyle.tailIndent = -self.indent

        let attributedString = NSMutableAttributedString(string: text, attributes: [
                NSFontAttributeName: self.titleFont,
                NSForegroundColorAttributeName: self.titleColor
        ])

        do {
            let regularExpression = try NSRegularExpression(pattern: "^(([ ]{4}).*)$", options: NSRegularExpressionOptions.AnchorsMatchLines)
            let matches = regularExpression.matchesInString(text, options: NSMatchingOptions.ReportCompletion, range: NSMakeRange(0, text.utf16.count))

            for match in matches {
                attributedString.addAttributes([
                        NSFontAttributeName: self.descriptionFont,
                        NSForegroundColorAttributeName: self.descriptionColor,
                        NSParagraphStyleAttributeName: indentParagraphStyle
                ], range: match.range)
            }

            for match: NSTextCheckingResult in matches.reverse() {
                attributedString.replaceCharactersInRange(match.rangeAtIndex(2), withString: "")
            }
        } catch {

        }

        self.attributedText = attributedString
    }
}
