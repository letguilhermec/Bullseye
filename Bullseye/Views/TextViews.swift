import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var number: String
  
  var body: some View {
    Text(number)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var number: String
  
  var body: some View {
    Text(number)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .foregroundColor(Color("TextColor"))
      .font(.caption)
      .kerning(1.5)
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
      .foregroundColor(Color("TextColor"))
  }
}

struct ScoreText: View {
  var text: Int
  
  var body: some View {
    Text(String(text))
      .font(.title3)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
  }
}

struct DateText: View {
  var date: Date
  
  var body: some View {
    Text(date, style: .time)
      .font(.title3)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigBoldText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .font(.title)
      .fontWeight(.black)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct ButtonText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .padding()
      .frame(maxWidth: .infinity)
      .background(Color.accentColor)
      .foregroundColor(.white)
      .font(.headline)
      .bold()
      .cornerRadius(12)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      InstructionText( text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
        .padding(.horizontal, 30)
      BigNumberText(number: "89")
      HStack {
        SliderLabelText(number: "1")
        Slider(value: .constant(50.0), in: 1.0...100.0)
        SliderLabelText(number: "100")
      }
      .padding()
      BodyText(text: "You scored 200 Points.\n🎉🎉🎉")
      ButtonText(text: "Start New Round")
      ScoreText(text: 459)
      DateText(date: Date())
      BigBoldText(text: "Leaderboard")
    }
    .padding()
  }
}
