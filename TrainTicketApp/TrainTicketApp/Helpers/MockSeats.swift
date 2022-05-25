//
//  MockSeats.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-25.
//

import Foundation

class MockSeats{
    static func seats() -> [Seat]{
        return [
          Seat(id: "1A", passenger: "sue@gmail.com"),
          Seat(id: "1B", passenger: ""),
          Seat(id: "1C", passenger: ""),
          Seat(id: "1D", passenger: ""),
          Seat(id: "2A", passenger: ""),
          Seat(id: "2B", passenger: ""),
          Seat(id: "2C", passenger: "sue2@gmail.com"),
          Seat(id: "2D", passenger: ""),
          Seat(id: "3A", passenger: ""),
          Seat(id: "3B", passenger: ""),
          Seat(id: "3C", passenger: ""),
          Seat(id: "3D", passenger: ""),
          Seat(id: "4A", passenger: ""),
          Seat(id: "4B", passenger: "sue3@gmail.com"),
          Seat(id: "4C", passenger: "sue4@gmail.com"),
          Seat(id: "4D", passenger: ""),
          Seat(id: "5A", passenger: ""),
          Seat(id: "5B", passenger: ""),
          Seat(id: "5C", passenger: ""),
          Seat(id: "5D", passenger: "sue5@gmail.com")
        ]
    }
}
