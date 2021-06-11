# Category.create!([
 # {title: "MULHER", weight: 0, products_counter: 0, ancestry: nil},
  #{title: "CRIANÇA", weight: 1, products_counter: 0, ancestry: nil},
  #{title: "VESTIDOS  DE \"A\"", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "VESTIDOS DE RETO", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "MENINA | 4- 16 ANO", weight: 0, products_counter: 0, ancestry: "2"},
  #{title: "MENINA | 2- 12 ANOS", weight: 0, products_counter: 0, ancestry: "2"},
  #{title: "MENINO | 2- 12 ANOS", weight: 0, products_counter: 0, ancestry: "2"},
  #{title: "MENINO | 4- 16 ANO", weight: 0, products_counter: 0, ancestry: "2"},
  #{title: "VESTIDOS DE PRINCESA", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "VESTIDOS DE IMPÉRIO", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "VESTIDO DE SEREIA", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "VESTIDOS CURTOS", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "VESTIDOS DE MULLET", weight: 0, products_counter: 0, ancestry: "1"},
  #{title: "FATOS", weight: 0, products_counter: 0, ancestry: "1"}
#])


Size.create!([
  {name: "XXS"},
  {name: "XS"},
  {name: "S"},
  {name: "XL"},
  {name: "XXL"},
  {name: "XXXL"},
  {name: "XXXXL"},
  {name: "XXXXXL"}
])

Color.create!([
  {name: "AMARELOS",codigo: "yellow"},
  {name: "AZUIS",codigo: "blue"},
  {name: "BRANCOS",codigo: "white"},
  {name: "CASTANHOS",codigo: "brown"},
  {name: "CINZENTOS",codigo: "grey"},
  {name: "LARANJA",codigo: "orange"},
  {name: "METALIZADOS",codigo: "silver"},
  {name: "OUTROS",codigo: "white"},
  {name: "PRETOS",codigo: "black"},
  {name: "ROXOS",codigo: "purple"},
  {name: "ROSA",codigo: "pink"},
  {name: "VERDES",codigo: "green-coral"},
  {name: "VERMELHOS",codigo: "red"}
])