//
//  Carlist.swift
//  Electric Zone
//
//  Created by Amit Patel on 20/10/23.
//

import SwiftUI

struct CarEV: Identifiable{
    
    let id: Int
    let imgName: String
    let title: String
    let subtitle: String
    
    static let car: [CarEV] = [
        .init(id: 0, imgName: "car00", title: "Tata Nexon EV", subtitle: "Range 465Km"),
        .init(id: 1, imgName: "car01", title: "Tata Tiago EV", subtitle: "Range 315Km"),
        .init(id: 2, imgName: "car02", title: "Mahindra XUV400", subtitle: "Range 456 Km"),
        .init(id: 3, imgName: "car03", title: "MG Comet EV", subtitle: "Range 230Km"),
        .init(id: 4, imgName: "car04", title: "Hyundai Ioniq5",subtitle:"Range 631Km"),
        .init(id: 5, imgName: "car05", title: "Kia EV6", subtitle: "Range 708 Km"),
        .init(id: 6, imgName: "car06", title: "BYD Atto 3", subtitle: "Range 521Km"),
        .init(id: 7, imgName: "car07", title: "Citroen eC3", subtitle:"Range 320Km"),
        .init(id: 8, imgName: "car08", title: "MG ZS EV", subtitle: "Range 461Km")
        
    
    ]
}

struct Carlist: View {
    let arrCar = CarEV.car
    
    var body: some View {
        
        
            List{
                
                ForEach(arrCar) { car in
                    
                    VStack{
                        
                        HStack{
                            Image(car.imgName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 100)
                                .cornerRadius(10)
                            
                            
                            VStack(alignment: .leading){
                                
                                Text(car.title)
                                    .font(.headline)
                                    .padding(.bottom, 1.0)
                                
                                Text(car.subtitle)
                                    .font(.subheadline)
                            }
                            .padding(.leading, 10.0)
                            
                        }
                        
                        .background(Rectangle().foregroundColor(.white))
                        .cornerRadius(10.0)
                        
                    }
                    
                }
                .listRowSeparator(.hidden)
                
                
            }
            
            
            
        
        
        
    
        
    }
}

struct Carlist_Previews: PreviewProvider {
    static var previews: some View {
        Carlist()
    }
}
