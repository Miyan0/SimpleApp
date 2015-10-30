//
//  Document.swift
//  SimpleApp
//
//
//

import Cocoa

class Document: NSPersistentDocument {

    
    override init() {
        super.init()
        print("Document init called")
        // Add your subclass-specific initialization here.
    }

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        print("Document makeWindowControllers called")
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateControllerWithIdentifier("Document Window Controller") as! NSWindowController
        self.addWindowController(windowController)
        
        if let viewController = windowController.contentViewController {
            viewController.setValue(self, forKey: "document")
        }
    }
    
    deinit {
        print("Document deinit")
        print("---------\n")
        
    }

}
