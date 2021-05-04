//
//  VASmallWidget.swift
//  WidgetExtensionExtension
//
//  Created by Anuja Deshmukh on 02/05/21.
//

import SwiftUI
import WidgetKit

struct VASmallWidgetUI: View {
    
    private var cubData : ClubDataModel
    init(_cubData : ClubDataModel ) {
        self.cubData = _cubData
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("VA Data").font(.title)
            Text(cubData.clubName).font(.subheadline)
            Text(cubData.clubId).font(.subheadline)

//                .foregroundColor(Color.secondary)
        }
    }
}

struct VASmallWidgetUI_Previews: PreviewProvider {
    static var previews: some View {
        VASmallWidgetUI(_cubData: ClubDataModel(clubName: "", clubId: ""))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
