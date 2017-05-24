//
//  ViewController.swift
//  Avplayer-sample
//
//  Created by Seungyoun Yi on 2017. 5. 24..
//  Copyright © 2017년 Seungyoun Yi. All rights reserved.
//
import AVFoundation
import AVKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"http://v.zigbang.com/360/14029/main/master.m3u8")
        guard let _url = url else { return }
        
        let player = AVPlayer(url: _url)
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
        playerController.view.frame = self.view.frame
        
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

