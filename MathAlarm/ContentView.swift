//
//  ContentView.swift
//  MathAlarm
//
//  Created by Nikita Arshinov on 25.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Range(0...5)) { _ in
                    AlarmView()
                }
            }.navigationTitle("Будильник")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Править") {
                            
                        }
                    }

                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                
                        }

                    }
                }.foregroundColor(.orange)
        }
        
    }
}

struct AlarmView: View {
    @State private var isToogle = true

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("12:30")
                    .font(.system(size: 60, weight: .light))
                Text("Будильник")
                    .font(.system(size: 15))
            }.foregroundColor(.gray)
            Toggle("", isOn: $isToogle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
