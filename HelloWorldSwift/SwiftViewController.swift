//
//  File.swift
//  HelloWorldSwift
//
//  Created by water on 14-10-21.
//  Copyright (c) 2014年 water. All rights reserved.
//

import UIKit
import Foundation

typealias CallBack = () -> Void

class SwiftViewController: UIViewController {
    
     var delegate : ViewDelegate?
     var button : UIButton?
     var callback :CallBack?
     var sideLength: Double = 20.0
    
    
    var theTableView : UITableView?
    
    override func viewDidDisappear(animated: Bool) {
        
        callback!()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor();
        
        var label:UILabel?
        label = UILabel()
        label?.text = text("me")
        label?.frame = CGRectMake(0, 0, 200, 200)
        label?.center = self.view.center
        label?.backgroundColor = UIColor.clearColor()
//        self.view.addSubview(label!);
        
        
        button = UIButton(frame: CGRectMake(50, 100, 100, 50))
        button?.setTitle("jump", forState: UIControlState.Normal)
        button?.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button?.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)

        button?.addTarget(self, action: Selector("buttonPressed:"), forControlEvents: UIControlEvents.TouchUpInside);

//        self.view.addSubview(button!)
        
        
        theTableView = UITableView(frame: CGRectMake(0, 0, 320, 568), style: UITableViewStyle.Grouped)
//        theTableView?.delegate = self
        self.view.addSubview(theTableView!)
    }
    
//    override  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        
//        return 1
//    }
    
    
    var perimeter: Double {
        
        set {
            sideLength = newValue / 3.0
        }
        
        get {
            return self.perimeter
        }
    }
    
     func someTypeMethod() {
    
        NSLog(" sideLength :%f,perimeter:%f" , self.sideLength ,perimeter);
    }
    
     func buttonPressed(sender:UIButton){
    
//        NSLog("sender >> %@", sender.titleForState(UIControlState.Normal)!);
        
        NSLog(" sideLength :%f,perimeter:%f" , self.sideLength ,perimeter);

        /*
        
        delegate?.didSelect!(11)
        delegate?.didSelect?(11)//1.第一个问号代表delegate可能为空取默认值，第二个问号：方法didSelect是否实现，如果没有实现，则不执行后面代码,程序不会crash，此处如果使用'!',表示方法didSelect肯定已实现，如果未实现则程序crash。
        
        */

        
        /*
        
        var array:NSArray? = ["w","a","n","g"]
        var dic:NSDictionary? = ["1":"w","2":"a","3":"n","4":"g"]

        delegate?.recvData?(array, dic: dic) 
        
        */
        
        
    
         /*
        
        元组使用
        var handlerData = getUserInfo(15,4);
        
        NSLog(format( handlerData (3) ))
        
        */
        
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }
    
    
    //返回一个函数
    func getUserInfo(numbers:Int...) -> (Int -> (NSString,Int,Bool,Double)){
    
        func handlerData(data:Int) -> (NSString,Int,Bool,Double){
        
            
            var argu1 = "wangbin_\(data)";
            var argu2 = data + numbers[0]
            var argu3 = (data == 3)
            var argu4 =  Double(numbers[1])
            
            //函数内部定义函数
            func replareIndex(){
                
                argu4 -= 2.25;
            }
            
            if argu3{
                //调用内部函数
                replareIndex();
            }
            
            return (argu1,argu2,argu3,argu4)
        }
   
        return handlerData
    }
    
    func format(info:(NSString,Int,Bool,Double)) ->NSString{
     
        return info.0 + ",\(info.1)," + (info.2 ? "male" : "female") + ",height:\(info.3)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func text(str:NSString) ->NSString{
    
        
        return str + "button";
    }
}
