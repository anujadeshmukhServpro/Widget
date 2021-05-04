//
//  Provider.swift
//  WidgetExtensionExtension
//
//  Created by Anuja Deshmukh on 02/05/21.

import WidgetKit

struct Provider: TimelineProvider {
     typealias Entry = ClubEntry
    func getSnapshot(in context: Context, completion: @escaping (ClubEntry) -> Void) {
        let entry = ClubEntry.getClubData()
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
        let currentDate = Date()
        
        let entry = ClubEntry.getClubData()//ClubEntry(date: currentDate, clubdata: [ClubDataModel(clubName: "", clubId: "")])
        let refreshDate = Calendar.current.date(byAdding: .second, value: 5, to: currentDate)!
        let timeline = Timeline(entries: [entry], policy: .atEnd )
        completion(timeline)
        
    }
    
    func placeholder(in context: Context) -> ClubEntry {
        ClubEntry.getClubData()
    }

//    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (ClubEntry) -> ()) {
//        let entry = ClubEntry.getClubData()
//        completion(entry)
//    }
//
//    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
////        var entries: [ClubEntry] = []
////
////        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
////        let currentDate = Date()
////        for hourOffset in 0 ..< 5 {
////            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
////            let entry = ClubEntry(date: entryDate, configuration: configuration)
////            entries.append(entry)
////        }
////
////        let timeline = Timeline(entries: entries, policy: .atEnd)
////        completion(timeline)
//    }
}
