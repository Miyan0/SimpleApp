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
    
    // not sure if we can cause a retain cycle by using a strong reference
    dynamic var document: Document? {
        didSet {
            print("ViewController, document didSet")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController viewDidLoad")

    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        print("ViewController viewWillAppear")

    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        print("ViewController viewDidAppear")
        
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        print("ViewController viewWillDisappear")
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            print("ViewController representedObject")
        }
    }
    
    deinit {
        print("ViewController deinit")
    }
}