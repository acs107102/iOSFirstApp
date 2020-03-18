//
//  ContentView.swift
//  FirstAapp
//
//  Created by Winnie on 2020/3/17.
//  Copyright © 2020 Winnie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       ZStack {
         Image("photo3")
                .resizable()
        Text("dodoro")
            .foregroundColor(Color(hue: 0.407, saturation: 0.991, brightness: 0.011)).font(.custom("Chalkduster",size: 65))
            .offset(x:10, y:-300)
        
          
        Group {
            Path{(path) in
                    path.move(to:CGPoint(x:122, y:442));
                    path.addQuadCurve(to: CGPoint(x:167, y:580), control:CGPoint(x:115, y:485))
                    path.addQuadCurve(to: CGPoint(x:122,y:442), control:CGPoint(x:155, y:455))
                    path.closeSubpath()
                    
                    path.move(to:CGPoint(x:290, y:442));
                    path.addQuadCurve(to: CGPoint(x:240, y:580), control:CGPoint(x:258, y:456))
                    path.addQuadCurve(to: CGPoint(x:290,y:442), control:CGPoint(x:296, y:483))
                    path.closeSubpath()
                    
                    path.move(to:CGPoint(x:271, y:557));
                    path.addQuadCurve(to: CGPoint(x:128, y:557), control:CGPoint(x:203, y:460))
                    path.addQuadCurve(to: CGPoint(x:130,y:717), control:CGPoint(x:75, y:648))
                    path.addQuadCurve(to: CGPoint(x:277,y:717), control:CGPoint(x:203, y:800))
                    path.addQuadCurve(to: CGPoint(x:271,y:557), control:CGPoint(x:322, y:648))
                    path.closeSubpath()
                }
            .fill(Color(red:203/255, green:203/255, blue:203/255))
            Path(ellipseIn: CGRect(x:133,y:608,width:140,height:150))
                .fill(Color.white)
            Path(ellipseIn: CGRect(x:147,y:538,width:30,height:30))
            .fill(Color.white)
            Path(ellipseIn: CGRect(x:227,y:538,width:30,height:30))
            .fill(Color.white)
            Path(ellipseIn: CGRect(x:157,y:548,width:10,height:10))
            .fill(Color.black)
            Path(ellipseIn: CGRect(x:237,y:548,width:10,height:10))
            .fill(Color.black)
            Path(ellipseIn: CGRect(x:190,y:558,width:20,height:10))
            .fill(Color.black)
            
            Path{(path) in
              path.move(to:CGPoint(x:137, y:585));
              path.addQuadCurve(to: CGPoint(x:265, y:585), control:CGPoint(x:205, y:555))
              path.addQuadCurve(to: CGPoint(x:137,y:585), control:CGPoint(x:205, y:615))
              path.closeSubpath()  }
              .fill(Color.white)
        }
        
        Group {
            a()
                .fill(Color.gray)
            a()
                .fill(Color.gray)
                .position(x:245, y:425)
            a()
                .fill(Color.gray)
                .position(x:175, y:425)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct a:Shape{
    func path(in rect:CGRect) -> Path
    {
        Path{(path) in
        path.move(to:CGPoint(x:177, y:635));
        path.addQuadCurve(to: CGPoint(x:225, y:635), control:CGPoint(x:205, y:600))
        path.addQuadCurve(to: CGPoint(x:177,y:635), control:CGPoint(x:205, y:615))
        path.closeSubpath()
    }
  }
}
