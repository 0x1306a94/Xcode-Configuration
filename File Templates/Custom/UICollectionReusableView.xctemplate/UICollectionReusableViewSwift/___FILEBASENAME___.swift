//___FILEHEADER___

/* System */
import UIKit

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    //MARK: - public property

    //MARK: - readonly property

    //MARK: - getters and setters


    //MARK: - life cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonInit()
    }

    #if DEBUG
    deinit {
        print("[\(type(of: self)) deinit]")
    }
    #endif
}


//MARK: - initial Methods
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    func commonInit() {
        self.backgroundColor = UIColor.white;
        self.addSubViews()
        self.addSubViewConstraints()

    }
}

//MARK: - add Subview
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {

    func addSubViews() {

    }
}

//MARK: - layout
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {

    func addSubViewConstraints() {

    }
}

//MARK: - private method
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {

}

//MARK: - public method
extension ___FILEBASENAMEASIDENTIFIER___ {

}
