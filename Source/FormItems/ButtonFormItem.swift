// MIT license. Copyright (c) 2020 SwiftyFORM. All rights reserved.
import UIKit

public class ButtonFormItem: FormItem, CustomizableTitleLabel, CustomizableButtons {
    
	override func accept(visitor: FormItemVisitor) {
		visitor.visit(object: self)
	}

	public var title: String = ""
    
    public var titleTextColor: UIColor = Colors.text
    
    public var titleFont: UIFont = UIFont.preferredFont(forTextStyle: .body)

    public var textAlignment: NSTextAlignment = .center
    
    public var backgroundColor: UIColor = .clear 

	public var action: () -> Void = {}
    
}
