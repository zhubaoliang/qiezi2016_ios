//
//  ConversationListViewController.swift
//  Demo
//
//  Created by zhang on 16/4/28.
//  Copyright © 2016年 xiaocool. All rights reserved.
//

import UIKit

class ConversationListViewController: EaseConversationListViewController,EaseConversationListViewControllerDelegate, EaseConversationListViewControllerDataSource{

    let conversationsArray = NSMutableArray()
    let networkStateView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "消息"
        self.showRefreshHeader = true
        self.delegate = self
        self.dataSource = self
        
        self.tableViewDidTriggerHeaderRefresh()
        self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
//        网络出现故障时
        
        self.NetworkStateView()

    }
    func NetworkStateView()->UIView{
        if self.networkStateView.isKindOfClass(NSNull) {
           self.networkStateView.frame = CGRectMake(0, 0, self.tableView.frame.size.width, 44)
            self.networkStateView.backgroundColor = UIColor(red: 255 / 255.0, green: 199 / 255.0, blue: 199 / 255.0, alpha: 0.5)
            
            let imageView = UIImageView(frame: CGRectMake(10, (self.networkStateView.frame.size.height - 20) / 2, 20, 20))
            imageView.image = UIImage(named: "messageSendFail.png")
            self.networkStateView.addSubview(imageView)
            
            let label = UILabel(frame:CGRectMake(CGRectGetMaxX(imageView.frame) + 5, 0, self.networkStateView.frame.size.width - (CGRectGetMaxX(imageView.frame) + 15), self.networkStateView.frame.size.height))
            label.font = UIFont.systemFontOfSize(15.0)
            label.textColor = UIColor.grayColor()
            label.backgroundColor = UIColor.clearColor()
            label.text = NSLocalizedString("网络连接中", comment: "网络未连接")
            self.networkStateView.addSubview(label)
        }
        return self.networkStateView
    }
    
//    Delegate方法
    func conversationListViewController(conversationListViewController: EaseConversationListViewController!, didSelectConversationModel conversationModel: IConversationModel!) {
        
        if conversationModel != nil {
            let conversation:EMConversation = conversationModel.conversation
            let chatUi = ChatController.init(conversationChatter: conversation.conversationId, conversationType: EMConversationTypeChat)
            chatUi.avatarImage = UIImage.init(named: "mohu.jpg")!
            chatUi.nikNmae = conversation.conversationId
            chatUi.title = conversation.conversationId
            self.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(chatUi, animated: true)
            self.hidesBottomBarWhenPushed = false
        }
    }
//    DataSource方法
    func conversationListViewController(conversationListViewController: EaseConversationListViewController!, modelForConversation conversation: EMConversation!) -> IConversationModel! {
        let model = EaseConversationModel(conversation: conversation)
        model.avatarImage = UIImage.init(named: "mohu.jpg")
        return model
    }
//    最后一条的时间
    func conversationListViewController(conversationListViewController: EaseConversationListViewController!, latestMessageTimeForConversationModel conversationModel: IConversationModel!) -> String! {
        var latestMessageTime = ""
        let lastMessage:EMMessage = conversationModel.conversation.latestMessage
        if lastMessage != "" {
           latestMessageTime = NSDate.formattedTimeFromTimeInterval(lastMessage.timestamp)
        }
        return latestMessageTime
    }
    
    func refreshDataSource(){
       self.tableViewDidTriggerHeaderRefresh()
    }
    func isConnect(isConnect:Bool){
        if !isConnect{
            self.tableView.tableHeaderView = self.networkStateView
        }else{
            self.tableView.tableHeaderView = nil
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        EMClient.sharedClient().chatManager.addDelegate(self, delegateQueue: nil)
        self.refreshDataSource()
//        self.refreshAndSortView()
        self.tabBarController?.tabBar.hidden = false
//        self.tableView.reloadData()
    }
    //MARK: -当收到消息的时候会收到此回调
     override func didReceiveMessages(aMessages: [AnyObject]!) {
        self.refreshDataSource()
        //self.tableView.reloadData()
    }

    
}
