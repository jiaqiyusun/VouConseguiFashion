Category.create!([
  {title: "MULHER", weight: 0, products_counter: 0, ancestry: nil},
  {title: "CRIANÇA", weight: 1, products_counter: 0, ancestry: nil},
  {title: "VESTIDOS  DE \"A\"", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "VESTIDOS DE RETO", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "MENINA | 4- 16 ANO", weight: 0, products_counter: 0, ancestry: "2"},
  {title: "MENINA | 2- 12 ANOS", weight: 0, products_counter: 0, ancestry: "2"},
  {title: "MENINO | 2- 12 ANOS", weight: 0, products_counter: 0, ancestry: "2"},
  {title: "MENINO | 4- 16 ANO", weight: 0, products_counter: 0, ancestry: "2"},
  {title: "VESTIDOS DE PRINCESA", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "VESTIDOS DE IMPÉRIO", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "VESTIDO DE SEREIA", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "VESTIDOS CURTOS", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "VESTIDOS DE MULLET", weight: 0, products_counter: 0, ancestry: "1"},
  {title: "FATOS", weight: 0, products_counter: 0, ancestry: "1"}
])


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
  {name: "黄色",codigo: "yellow"},
  {name: "蓝色",codigo: "blue"},
  {name: "白色",codigo: "white"},
  {name: "咖啡色",codigo: "brown"},
  {name: "灰色",codigo: "grey"},
  {name: "橘色",codigo: "orange"},
  {name: "金属色",codigo: "silver"},
  {name: "其他",codigo: "white"},
  {name: "黑色",codigo: "black"},
  {name: "紫色",codigo: "purple"},
  {name: "粉红色",codigo: "pink"},
  {name: "绿色",codigo: "green-coral"},
  {name: "红色",codigo: "red"}
])

