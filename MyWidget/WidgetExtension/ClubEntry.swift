//
//  ClubEntry.swift
//  WidgetExtensionExtension
//
//  Created by Anuja Deshmukh on 02/05/21.
//

import WidgetKit
struct ClubEntry: TimelineEntry {
    let date: Date
    let clubdata : [ClubDataModel]
//    let configuration: ConfigurationIntent
    
    static func getClubData() -> ClubEntry
    {
        return ClubEntry(date: Date(), clubdata: [ClubDataModel(clubName: "", clubId: "")])
    }
}
