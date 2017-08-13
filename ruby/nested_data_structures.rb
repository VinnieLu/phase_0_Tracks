highway = {
  lane_one: {
    toyota: ["Roger", "Jane"],
    honda: ["Rich", "Joey"],
    ford: ["Tiger", "Lane"]
  },
  lane_two: {
    tesla: ["Camille"],
    chevrolet: ["Joe", "Missy"],
    prius: ["Brandon", "Elliott"]
  },
  lane_three: {
    ford: ["Huey", "Lewis"],
    honda: ["Yolanda", "Jessie"],
    chevrolet: ["Peter", "Andrew"]
  },
  lane_four: {
    honda: ["Paola", "Kaylee"],
    ford: ["Rich", "Richey"],
    camry: ["Bill", "William"]
  }
}

p highway[:lane_one][:toyota][0]
p highway[:lane_two][:prius]
p highway[:lane_four]