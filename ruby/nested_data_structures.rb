highway = {
  lane_one: {
    toyota: ["Roger", "Jane"],
    honda: ["Rich", "Joey"],
    ford: ["Tiger", "Lane"],
    seat_info: {
      front_seat: 2,
      back_seat: 2
    }
  },
  lane_two: {
    tesla: ["Camille"],
    chevrolet: ["Joe", "Missy"],
    prius: ["Brandon", "Elliott"],
    seat_info: {
      front_seat: 2,
      back_seat: 3
    }
  },
  lane_three: {
    ford: ["Huey", "Lewis"],
    honda: ["Yolanda", "Jessie"],
    chevrolet: ["Peter", "Andrew"],
    seat_info: {
      front_seat: 3,
      back_seat: 4
    }
  },
  lane_four: {
    honda: ["Paola", "Kaylee"],
    ford: ["Rich", "Richey"],
    camry: ["Bill", "William"],
    seat_info: {
      front_seat: 2,
      back_seat: 4
    }
  }
}

p highway[:lane_three][:ford][0][1]
p highway[:lane_four][:seat_info][:back_seat]
p highway[:lane_one][:toyota][0]
p highway[:lane_two][:prius]
p highway[:lane_four]