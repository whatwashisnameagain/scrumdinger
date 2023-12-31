//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Imehr Steab on 8/23/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value:6, total:15)
            HStack {
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .padding()
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            
            Circle().strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
            .padding()
        };
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
