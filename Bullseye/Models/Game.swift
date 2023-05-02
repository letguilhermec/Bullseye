import Foundation

struct LeaderboardEntry {
  let score: Int
  let date: Date
}

struct Game {
  var targetValue = Int.random(in: 1...100)
  var score = 0
  var round = 1
  var leaderboardEntries: [LeaderboardEntry] = []
  
  init(loadTestData: Bool = false) {
    if loadTestData {
      insertAndSort(points: 100)
      insertAndSort(points: 80)
      insertAndSort(points: 200)
      insertAndSort(points: 50)
      insertAndSort(points: 20)
      
    }
  }
  
  func points(sliderValue: Int) -> Int {
    var points = 100 - abs(sliderValue - targetValue)
    if points == 100 {
      points += 100
    } else if points == 99 || points == 98 {
      points += 50
    }
    return points
  }
  
  mutating func startNewRound(points: Int) {
    insertAndSort(points: points)
    score += points
    round += 1
    targetValue = Int.random(in: 1...100)
  }
  
  mutating func restart() {
    targetValue = Int.random(in: 1...100)
    score = 0
    round = 1
  }
  
  mutating func insertAndSort(points: Int) {
    leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
    leaderboardEntries.sort { entry1, entry2 in
      entry1.score > entry2.score
    }
  }
}
