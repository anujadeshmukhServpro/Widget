//
//  WidgetExtension.swift
//  WidgetExtension
//
//  Created by Anuja Deshmukh on 01/05/21.
//

import WidgetKit
import SwiftUI
import Intents

struct WidgetExtensionEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var family
    
    @ViewBuilder
   
    var body: some View {
        VASmallWidgetUI(_cubData: entry.clubdata.first!)
        Text(entry.date, style: .time)
    }
}

@main
struct WidgetExtension: Widget {
    let kind: String = "WidgetExtension"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetExtensionEntryView(entry: entry)
        }
        .configurationDisplayName("Virgin Active")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall,.systemMedium,.systemLarge])
    }
}

struct WidgetExtension_Previews: PreviewProvider {
    static var previews: some View {
        WidgetExtensionEntryView(entry: ClubEntry.getClubData())
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
