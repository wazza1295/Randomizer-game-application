//=============================================================================
// PROGRAMMER: Waseem Hussain Syed
// PANTHER ID: 6349284
//
// CLASS: COP4655
// SECTION: RVCC
// SEMESTER: Summer 2023
//
// CERTIFICATION: I certify that this work is my own and that
// none of it is the work of any other person.
//=============================================================================

import SwiftUI

struct ContentView: View {
    @State private var ladybugScore = 0
    @State private var antScore = 0
    @State private var gameValue = 0
    @State private var ladyBugValue = 0
    @State private var antValue = 0
    @State private var timesPlayed = 0
    var body: some View {
        VStack {//Main VStack
            Spacer()
            HStack{//Lady Bug and Ant
                Spacer()
                VStack{// VStack ladybug
                    
                    Text("RandomNumber")
                        .frame(width: 140, height: 50, alignment: .center)
                    Text("\(ladyBugValue)")
                    Image(systemName: "ladybug")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaleEffect(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Text("\(ladybugScore)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width:100,height:100,alignment:.center)
                }//end Vstack Lady bug
                Spacer()
                VStack{//Ant
                    Text("RandomNumber")
                        .frame(width: 140, height: 50, alignment: .center)
                    Text("\(antValue)")
                    Image(systemName:"ant")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaleEffect(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Text("\(antScore)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width:100,height:100,alignment:.center)
                    
                }//end Vstack Ant
                    Spacer()
                
                
                
            }//end Hstack Ladybug and Ant
            
            
            Text("Game Random: " + String(gameValue))
            HStack{//HStack Button
                Button(action: {
                    ladyBugValue = Int.random(in: 0...999)
                    antValue = Int.random(in: 0...999)
                    gameValue = Int.random(in: 0...999)
                    
                    if ladyBugValue > gameValue{
                        ladybugScore += 1
                    }
                    if antValue > gameValue{
                        antScore += 1
                    }
                    timesPlayed += 1
                }) { //Play Button Image
                    Image("PlayButton")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(width:120)
                }//End Play button Image
            }//End HStack Button
            
            HStack{// HStack Number Image
                ForEach(Array(String(format: "%03d",gameValue)), id: \.self) {digit in
                    Image("\(digit)")
                }
            }// End Hstack Number Image
            Spacer()
            
            Text("Number of times played: \(timesPlayed)")
        }//end Main VStack
    }//end body
}//end view


//=============================================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//=============================================
