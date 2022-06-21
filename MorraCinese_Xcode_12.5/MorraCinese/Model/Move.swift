import Foundation

protocol Move {
   var name: String {get}
   var winAgainst: [Move] {get}
}
