//
//  MainViewController.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-15.
//

import UIKit

class MainViewController: UIViewController {

    //Row 1
    @IBOutlet weak var seat1AButton: UIButton!
    
    @IBOutlet weak var seat1BButton: UIButton!
    
    @IBOutlet weak var seat1CButton: UIButton!
    
    @IBOutlet weak var seat1DButton: UIButton!
    
    //Row 2
    @IBOutlet weak var seat2AButton: UIButton!
    
    @IBOutlet weak var seat2BButton: UIButton!
    
    @IBOutlet weak var seat2CButton: UIButton!
    
    @IBOutlet weak var seat2DButton: UIButton!
    
    //Row 3
    @IBOutlet weak var seat3AButton: UIButton!
    
    @IBOutlet weak var seat3BButton: UIButton!
    
    @IBOutlet weak var seat3CButton: UIButton!
    
    @IBOutlet weak var seat3DButton: UIButton!
    
    //Row 4
    @IBOutlet weak var seat4AButton: UIButton!
    
    @IBOutlet weak var seat4BButton: UIButton!
    
    @IBOutlet weak var seat4CButton: UIButton!
    
    @IBOutlet weak var seat4DButton: UIButton!
    
    //Row 5
    @IBOutlet weak var seat5AButton: UIButton!
    
    @IBOutlet weak var seat5BButton: UIButton!
    
    @IBOutlet weak var seat5CButton: UIButton!
    
    @IBOutlet weak var seat5DButton: UIButton!
    
    var seatList: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillSeatList()

        // Do any additional setup after loading the view.
    }
    
    func fillSeatList(){
        seatList.append(seat1AButton)
        seatList.append(seat1BButton)
        seatList.append(seat1CButton)
        seatList.append(seat1DButton)
        
        seatList.append(seat2AButton)
        seatList.append(seat2BButton)
        seatList.append(seat2CButton)
        seatList.append(seat2DButton)
        
        seatList.append(seat3AButton)
        seatList.append(seat3BButton)
        seatList.append(seat3CButton)
        seatList.append(seat3DButton)
        
        seatList.append(seat4AButton)
        seatList.append(seat4BButton)
        seatList.append(seat4CButton)
        seatList.append(seat4DButton)
        
        seatList.append(seat5AButton)
        seatList.append(seat5BButton)
        seatList.append(seat5CButton)
        seatList.append(seat5DButton)
    }

}
