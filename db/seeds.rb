Preschool.delete_all
Classroom.delete_all
Mom.delete_all
Teacher.delete_all
Kid.delete_all
Toy.delete_all


happystart = Preschool.create(name: "Happy Start", city: "Los Angeles")
seedlings = Preschool.create(name: "Seedlings", city: "Santa Barbara")
tots = Preschool.create(name: "Tia`s Tots", city: "Los Angeles")
sun = Preschool.create(name: "Sunshine", city: "Seattle")


seedclass1 = Classroom.create(name: "Seeds", age: 2, preschool: seedlings)
seedclass2 = Classroom.create(name: "Flowers", age: 3, preschool: seedlings)
seedclass3 = Classroom.create(name: "Trees", age: 5, preschool: seedlings)
totsclass1 = Classroom.create(name: "Toddler Tots", age: 2, preschool: tots)
totsclass2 = Classroom.create(name: "Tiny Tots", age: 3, preschool: tots)
sunclass1 = Classroom.create(name: "Class 1", age: 1, preschool: sun)
sunclass2 = Classroom.create(name: "Class 2", age: 2, preschool: sun)
sunclass3 = Classroom.create(name: "Class 3", age: 3, preschool: sun)
sunclass4 = Classroom.create(name: "Class 4", age: 4, preschool: sun)


barbara = Mom.create(name: "Barbara H.", age: 35)
sara = Mom.create(name: "Sara G.", age: 29)
hannah = Mom.create(name: "Hannah F.", age: 24)
mia = Mom.create(name: "Mia S.", age: 27)
jaclyn = Mom.create(name: "Jaclyn K.", age: 37)


sam = Kid.create(name:"Sam", age: 3, mom: jaclyn, classroom: sunclass3)
layla = Kid.create(name:"Layla", age: 3, mom: jaclyn, classroom: sunclass3)
jeanie = Kid.create(name:"Jeanie", age: 3, mom: jaclyn, classroom: sunclass3)
chris = Kid.create(name:"Chris", age: 1, mom: jaclyn, classroom: sunclass1)
levi = Kid.create(name:"Levi", age: 2, mom: sara, classroom: seedclass1)
rachel = Kid.create(name:"Rachel", age: 5, mom: sara, classroom: seedclass3)
chloe = Kid.create(name:"Chloe", age: 3, mom: hannah, classroom: totsclass2)
ryan = Kid.create(name:"Ryan", age: 2, mom: barbara, classroom: totsclass1)


kerry = Teacher.create(name: "Kerry", years_teaching: 5,  classroom: sunclass3)
kim = Teacher.create(name: "Kim", years_teaching: 1,  classroom: sunclass3)
nancy = Teacher.create(name: "Nancy", years_teaching: 3,  classroom: sunclass1)
adriana = Teacher.create(name: "Adriana", years_teaching: 6,  classroom: totsclass1)
elizabeth = Teacher.create(name: "Elizabeth", years_teaching: 3,  classroom: seedclass1)



billy = Toy.create(name: "Billy Bunny", kind_of_toy: "stuffed animal", kid: chloe, years_owned: 3)
gerald = Toy.create(name: "Gerald Giraffe", kind_of_toy: "stuffed animal", kid: chloe, years_owned: 3)
ball = Toy.create(name: "Ball", kind_of_toy: "ball", kid: levi, years_owned: 1)
dolly = Toy.create(name: "Dolly", kind_of_toy: "doll", kid: rachel, years_owned: 4)