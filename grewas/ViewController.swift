//
//  ViewController.swift
//  grewas
//
//  Created by yesway on 2016/11/11.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate var popover: Popover!
    fileprivate var popoverOptions: [PopoverOption] = [
        .type(.down),
        .blackOverlayColor(UIColor(white: 0.0, alpha: 0.6)),
        .cornerRadius(20)
    ]
    
    var tableview: UITableView?
    
    var textField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action(_ sender: UIButton) {
//          需要修改popView的背景色，到popover中186行修改
//        let tempFrame = sender.frame;
//        let startPoint = CGPoint(x: tempFrame.origin.x, y: tempFrame.origin.y)
        
//        tableview = UITableView(frame: CGRect(x: 0, y: 0, width: 300, height: 150))
//        tableview?.delegate = self
//        tableview?.dataSource = self
//        tableview?.backgroundColor = UIColor.red
 
//        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 300, height: 150))
        
        
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: 75, height: 75)
//        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 10
//        let collectionView = UICollectionView(frame:  CGRect(x: 0, y: 0, width: 300, height: 150), collectionViewLayout: layout)
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
//        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//        button.addTarget(self, action: #selector(onClick), for: .touchDown)
        
//        let seged = UISegmentedControl(items: ["A","B"])
//        seged.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        
        
        let sw = UISwitch()
        
        self.popover = Popover(options: popoverOptions)
        self.popover.show(sw, fromView: sender)
    }
    
    func onClick() {
        print("click")
    }
}

extension ViewController: UITextFieldDelegate {
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        return cell;
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        return cell
    }
    
}

