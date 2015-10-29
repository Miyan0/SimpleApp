//
//  ViewController.swift
//  SimpleApp
//
//
//

import Cocoa

class ViewController: NSViewController {
    
    
    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var arrayController: NSArrayController!
    
    weak var document: Document? {
        didSet {
            print("ViewController, document didSet")
        }
    }
    
    func stopObservingManagedContext() {
        print("ViewController stopObservingManagedContext")
        arrayController.setValue(nil, forKey: "content")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController viewDidLoad")
        
        //        if let document = NSDocumentController.sharedDocumentController().documentForWindow(self.view.window!) {
        //            print("Document = \(document)")
        //        }
        //        print("Document is nil")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear() {
        print("ViewController viewWillAppear")
        //        if let document = NSDocumentController.sharedDocumentController().documentForWindow(self.view.window!) {
        //            print("Document = \(document)")
        //            self.document = document as? Document
        //            let dummy : String = self.document!.dummyText
        //            print("Value of document.dummyText = \(dummy)")
        //
        //        }
        //        else {
        //            fatalError("Document is nil")
        //        }
    }
    
    override func viewDidAppear() {
        print("ViewController viewDidAppear")
        
    }
    
    override func viewWillDisappear() {
        print("ViewController viewWillDisappear")
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            print("ViewController representedObject")
        }
    }
    
    deinit {
        print("ViewController deinit")
        //        arrayController.
        stopObservingManagedContext()
    }
}