//
//  ContentView.swift
//  tflTubeStatus
//
//  Created by mahesh lad on 07/11/2023.
//

import SwiftUI

struct ContentView: View {
  //  @StateObject private var tubeViewModel = TubeViewModel(serviceProtocol: MockNetworkService())
   
    @StateObject  var tubeViewModel = TubeViewModel(serviceProtocol: NetworkServiceFactory.create() )
    
    var body: some View {
        NavigationStack {
            List(tubeViewModel.result ?? [TubeResult]() , id: \.id) { tubeResult in
                let isReason = tubeResult.lineStatuses.first?.reason
                VStack(alignment: .leading) {
                    Text(tubeResult.name)
                        .font(.headline)
                        .foregroundColor(tubeResult.name.getColor)
                    Text(tubeResult.lineStatuses.first?.statusSeverityDescription ?? "")
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    
                    tubeResult.lineStatuses.first?.reason.map { Text($0) }
                        .font(.body)
                        .foregroundColor(.secondary)
                        .opacity(tubeResult.lineStatuses.first?.reason != nil ? 1: 0)
                    
                } .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("\(tubeResult.name)"))
                
                    .accessibilityValue((isReason != nil ) ? Text("\(tubeResult.lineStatuses.first?.statusSeverityDescription ?? "") \(tubeResult.lineStatuses.first?.reason ?? "")") : Text("\(tubeResult.lineStatuses.first?.statusSeverityDescription ?? "")"))
                
                    .accessibility(addTraits: .isButton)
                // .accessibilityAction(named("Tap"))
            }
            .navigationBarTitle("Tube Status")
            .task {
                await tubeViewModel.getTubeStatus()
            }
        }
    }
}

#Preview {
    ContentView()
}
