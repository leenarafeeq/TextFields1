//
//  ContentView.swift
//  TextFields
//
//  Created by Lehana on 01/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State var textfield:  String = ""
    @State var dataArray: [String] = []
    @State var backgroundColor: Bool = false
    var body: some View {
        NavigationView{
            VStack{
 TextField("Type in here", text: $textfield)
                    .padding(10)
                    .frame(width: 350, height: 50)
                    .background(Color.gray)
                    .opacity(0.5)
                    .cornerRadius(30)
                
                Button {
                    save()
                } label: {
                    Text("Save")
                       
                        .padding()
                        
                        .frame(width: 350, height: 50)
                       
           .background(NumberOfLetters() ? Color.blue : Color.gray)
                        .cornerRadius(30)
                        .font(.title2)
                        .foregroundColor(.white)
                    
                }
     ForEach(dataArray, id: \.self) { datacell in
                    Text(datacell)
                }
Spacer()
            }
            
        }

        .padding()
        .navigationTitle("Hey")
    }
    func save() {
        dataArray.append(textfield)

        textfield = ""
    }
    func NumberOfLetters() -> Bool {
        if textfield.count >= 3  {
            return true
        }
        return false
    }
   
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
