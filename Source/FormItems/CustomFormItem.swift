//  Copyright © 2015 Simon Strandgaard. All rights reserved.
import Foundation

public class CustomFormItem: FormItem {
	public enum CustomFormItemError: ErrorType {
		case CouldNotCreate
	}

	public typealias CreateCell = Void throws -> UITableViewCell
	public var createCell: CreateCell = { throw CustomFormItemError.CouldNotCreate }
	
	override func accept(visitor: FormItemVisitor) {
		visitor.visitCustom(self)
	}
}
