//
//  MainViewController.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-15.
//

import UIKit
import FirebaseAuth

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
    
    //Confirm Edit Button
    @IBOutlet weak var confirmEditButton: UIButton!
    
    @IBAction func touchUpInside1AButton(_ sender: Any) {
        selectedSeatId = "1A"
        paintSeats()
    }
    
    @IBAction func touchUpInside1BButton(_ sender: Any) {
        selectedSeatId = "1B"
        paintSeats()
    }
    
    @IBAction func touchUpInside1CButton(_ sender: Any) {
        selectedSeatId = "1C"
        paintSeats()
    }
    
    @IBAction func touchUpInside1DButton(_ sender: Any) {
        selectedSeatId = "1D"
        paintSeats()
    }
    
    @IBAction func touchUpInside2AButton(_ sender: Any) {
        selectedSeatId = "2A"
        paintSeats()
    }
    
    @IBAction func touchUpInside2BButton(_ sender: Any) {
        selectedSeatId = "2B"
        paintSeats()
    }
    
    @IBAction func touchUpInside2CButton(_ sender: Any) {
        selectedSeatId = "2C"
        paintSeats()
    }
    
    @IBAction func touchUpInside2DButton(_ sender: Any) {
        selectedSeatId = "2D"
        paintSeats()
    }
    
    @IBAction func touchUpInside3AButton(_ sender: Any) {
        selectedSeatId = "3A"
        paintSeats()
    }
    
    @IBAction func touchUpInside3BButton(_ sender: Any) {
        selectedSeatId = "3B"
        paintSeats()
    }
    
    @IBAction func touchUpInside3CButton(_ sender: Any) {
        selectedSeatId = "3C"
        paintSeats()
    }
    
    @IBAction func touchUpInside3DButton(_ sender: Any) {
        selectedSeatId = "3D"
        paintSeats()
    }
    
    @IBAction func touchUpInside4AButton(_ sender: Any) {
        selectedSeatId = "4A"
        paintSeats()
    }
    
    @IBAction func touchUpInside4BButton(_ sender: Any) {
        selectedSeatId = "4B"
        paintSeats()
    }
    
    @IBAction func touchUpInside4CButton(_ sender: Any) {
        selectedSeatId = "4C"
        paintSeats()
    }
    
    @IBAction func touchUpInside4DButton(_ sender: Any) {
        selectedSeatId = "4D"
        paintSeats()
    }
    
    @IBAction func touchUpInside5AButton(_ sender: Any) {
        selectedSeatId = "5A"
        paintSeats()
    }
    
    @IBAction func touchUpInside5BButton(_ sender: Any) {
        selectedSeatId = "5B"
        paintSeats()
    }
    
    @IBAction func touchUpInside5CButton(_ sender: Any) {
        selectedSeatId = "5C"
        paintSeats()
    }
    
    @IBAction func touchUpInside5DButton(_ sender: Any) {
        selectedSeatId = "5D"
        paintSeats()
    }
    
    @IBAction func touchUpInsideCancelButton(_ sender: Any) {
    }
    
    
    @IBAction func touchUpInsideConfirmEditButton(_ sender: Any) {
        let seatIndex = seatButtonChart.firstIndex(where: {$0.seat.id == selectedSeatId})!
        seats[seatIndex].passenger = (Auth.auth().currentUser?.email)!
        seatButtonChart[seatIndex].seat = seats[seatIndex]
    }
    
    var seatButtonChart: [SeatButtonsChart] = []
    var seats: [Seat] = []
    
    var selectedSeatId: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Query seat chart to mark them as occupied, available or selected
//        seats = MockSeats.seats()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seats = MockSeats.seats()
        fillSeatList()
        paintSeats()
    }
    
    func paintSeats(){
        for seat in seatButtonChart{
            if seat.seat.passenger == ""{
                seat.seatButton.setTitle(seat.seat.id, for: .normal)
                seat.seatButton.tintColor = UIColor.systemGreen
            }else{
                seat.seatButton.setTitle("[\(seat.seat.id)]", for: .normal)
                seat.seatButton.tintColor = UIColor.systemRed
                seat.seatButton.isEnabled = false
            }
            
            if selectedSeatId != "" && selectedSeatId == seat.seat.id{
                seat.seatButton.setTitle("\(seat.seat.id)*", for: .normal)
                seat.seatButton.tintColor = UIColor.systemTeal
            }
        }
    }
    
    func fillSeatList(){
        seatButtonChart.append(SeatButtonsChart(seatButton: seat1AButton, seat: seats[0]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat1BButton, seat: seats[1]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat1CButton, seat: seats[2]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat1DButton, seat: seats[3]))
        
        seatButtonChart.append(SeatButtonsChart(seatButton: seat2AButton, seat: seats[4]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat2BButton, seat: seats[5]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat2CButton, seat: seats[6]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat2DButton, seat: seats[7]))
        
        seatButtonChart.append(SeatButtonsChart(seatButton: seat3AButton, seat: seats[8]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat3BButton, seat: seats[9]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat3CButton, seat: seats[10]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat3DButton, seat: seats[11]))
        
        seatButtonChart.append(SeatButtonsChart(seatButton: seat4AButton, seat: seats[12]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat4BButton, seat: seats[13]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat4CButton, seat: seats[14]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat4DButton, seat: seats[15]))
        
        seatButtonChart.append(SeatButtonsChart(seatButton: seat5AButton, seat: seats[16]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat5BButton, seat: seats[17]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat5CButton, seat: seats[18]))
        seatButtonChart.append(SeatButtonsChart(seatButton: seat5DButton, seat: seats[19]))
    }

}
