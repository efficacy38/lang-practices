{
  'Tom Collins': {
    ingredients: [
      { kind: "Farmer's Gin", qty: 1.5 },
      { kind: 'Lemon', qty: 1 },
      { kind: 'Simple Syrup', qty: 0.5 },
      { kind: 'Soda', qty: 2 },
      { kind: 'Angostura', qty: 'dash' },
    ],
    garnish: 'Maraschino Cherry',
    served: 'Tall',
  },
  Martini: {
    ingredients: [
      {
        // NOTE: reference
        // 1. $ refers to the outer-most object.
        // 2. ['foo'] looks up a field 
        // 3. .foo can be used if the field name is an identifier.
        // 4. [10] looks up an array element.
        // 5. Array slices like arr[10:20:2] are allowed, like in Python.
        //
        // Use the same gin as the Tom Collins.
        kind:
          $['Tom Collins'].ingredients[0].kind,
        qty: 2,
      },
      { kind: 'Dry White Vermouth', qty: 1 },
    ],
    garnish: 'Olive',
    served: 'Straight Up',
  },
  // NOTE: Create an alias, `self` refers to the current object.
  'Gin Martini': self.Martini,
}
