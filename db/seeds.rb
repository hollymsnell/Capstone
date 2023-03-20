User.create!([
  {name: "Holly Snell", email: "test@test.com", password: "password", admin: true, phone:"7194825459", age: 31, profile_pic: "", injury_diagnosis: "low back pain"},
  {name: "Kayla Sampson", email: "test1@test.com", password: "password", admin: false, phone:"7194825459", age: 31, profile_pic: "", injury_diagnosis: "knee pain"},
  {name: "Joe Dirt", email: "test2@test.com", password: "password", admin: false, phone:"7194825459", age: 55, profile_pic: "", injury_diagnosis: "hip pain"},
])

Exercise.create!([
  {name: "chin tucks", instructions: "While lying on your back, tuck chin toward your neck and gently press backwards.", frequency: "2 x 10, 3x/wk", image: "https://robertsontrainingsystems.com/wp-content/uploads/2012/04/supine-chin-tuck.png"},
  {name: "bridges", instructions: "While lying on your back, bend knees with feet flat. Gently tighten abdominals and lift pelvis up toward the ceiling.", frequency: "2 x 10, 3x/wk", image: ""},
  {name: "scapular retraction", instructions: "Sit upright and without arching your low back, squeeze shoulder in a down and back directions", frequency: "2 x 10, 3x/wk", image: "https://elitepttc.com/wp-content/uploads/2013/05/Scapular-Retraction.jpg"}
])

Program.create!([
  {user_id: 2, user_rating: "easy"},
  {user_id: 2, user_rating: "hard"},
  {user_id: 3, user_rating: "easy"}
])

ExerciseProgram.create!([
  {program_id: 1, exercise_id: 1},
  {program_id: 1, exercise_id: 3},
  {program_id: 2, exercise_id: 2},
  {program_id: 2, exercise_id: 3}
])

