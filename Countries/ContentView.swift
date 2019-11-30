//
//  ContentView.swift
//  Countries
//
//  Created by Frank Bara on 11/27/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct Country: Identifiable {
    var id: Int
    let name, detail, image, price, map: String
}

struct ContentView: View {
    
    var country: [Country] = [
        .init(id: 0, name: "Chicago, Illinios", detail: "Urna duis convallis convallis tellus id.", image: "chicago", price: "$204.98", map: "Chicago"),
        .init(id: 1, name: "Austria", detail: "Urna duis convallis convallis tellus id.", image: "austria", price: "$204.98", map: "Austria"),
        .init(id: 2, name: "New York, NY", detail: "Urna duis convallis convallis tellus id.", image: "new york", price: "$204.98", map: "New York"),
        .init(id: 3, name: "Dallas, TX", detail: "Urna duis convallis convallis tellus id.", image: "dallas", price: "$204.98", map: "Dallas"),
        .init(id: 4, name: "Denver, CO", detail: "Urna duis convallis convallis tellus id.", image: "colorado", price: "$204.98", map: "Colorado"),
        .init(id: 5, name: "San Diego, CA", detail: "Urna duis convallis convallis tellus id.", image: "san diego", price: "$204.98", map: "San Diego"),
        .init(id: 6, name: "Miami, FL", detail: "Urna duis convallis convallis tellus id.", image: "miami", price: "$204.98", map: "Miami"),
        .init(id: 7, name: "Prague, CZ", detail: "Urna duis convallis convallis tellus id.", image: "prague", price: "$204.98", map: "Prague"),
        .init(id: 8, name: "Amsterdam, IC", detail: "Urna duis convallis convallis tellus id.", image: "amsterdam", price: "$204.98", map: "Amsterdam")]
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    HStack {
                        Text("Countries")
                            .bold()
                            .lineLimit(nil)
                        Divider()
                        Text("Museums")
                            .bold()
                            .lineLimit(nil)
                        Divider()
                        Text("Turism")
                            .bold()
                            .lineLimit(nil)
                        Divider()
                        Text("Hotels")
                            .bold()
                            .lineLimit(nil)
                    }
                    .padding([.leading, .trailing])
                }
                
                
                HStack {
                    Text("Results")
                        .font(.headline)
                    Text("28")
                    .padding(6)
                        .foregroundColor(.white)
                        .background(Color.green)
                    .cornerRadius(14)
                    
                    Spacer()
                    Text("Views")
                    Image(systemName: "square.grid.2x2.fill")
                    
                }
                ForEach(country, id: \.id) { Detail in
                    NavigationLink(destination: VStack(alignment: .leading) { Image(Detail.image).resizable().aspectRatio(contentMode: .fit)
                        Text(Detail.name).font(.headline)
                        HStack {
                            
                        Text(Detail.detail).font(.subheadline).foregroundColor(.gray)
                            Spacer()
                            Text(Detail.price).foregroundColor(.red).underline()
                        }; } .edgesIgnoringSafeArea(.top)) {
                    HStack {
                        Image(Detail.image)
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(4)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack {
                                Text(Detail.name)
                                    .font(.headline)
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                    
                                    Image(systemName: "airplane")
                                        .foregroundColor(.orange)
                                    
                                    Image(systemName: "airplane")
                                    .foregroundColor(.orange)
                                        .rotationEffect(.init(degrees: 175))
                                }
                            }
                            
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundColor(.gray)
                                
                                Text(Detail.map)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Text(Detail.detail)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            .lineLimit(15)
                            
                            HStack {
                                Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                Image(systemName: "star.lefthalf.fill")
                                .foregroundColor(.yellow)
                                
                                Spacer()
                                
                                Text(Detail.price)
                                    .foregroundColor(.red)
                                .underline()
                            }
                        }
                    }
                }
                }
            }.navigationBarTitle(Text("Discover"))
                .navigationBarItems(leading: HStack { Text("Location:")
                    Text("Nurnberg.GM").foregroundColor(.gray)
                }, trailing: Image(systemName: "person.circle.fill").font(.headline))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
