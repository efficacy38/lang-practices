# NOTE: comments
/* A C-style comment. */
# A Python-style comment.

{
# NOTE: Fields, happen to be valid identifiers have no quotes
  cocktails: {
    // Ingredient quantities are in fl oz.
    'Tom Collins': {
    # NOTE: Fields, Trailing commas at the end of arrays / objects Comments
      ingredients: [
        # NOTE: String, literals use " or '. The single quote is easier 
        # on the eyes but either can be used to avoid escaping the other, 
        # e.g. "Farmer's Gin" instead of 'Farmer\'s Gin'.
        { kind: "Farmer's Gin", qty: 1.5 },
        { kind: 'Lemon', qty: 1 },
        { kind: 'Simple Syrup', qty: 0.5 },
        { kind: 'Soda', qty: 2 },
        { kind: 'Angostura', qty: 'dash' },
      ],
      garnish: 'Maraschino Cherry',
      served: 'Tall',
      # NOTE: Text blocks,  ||| allow verbatim text across multiple lines.
      description: |||
        The Tom Collins is essentially gin and
        lemonade.  The bitters add complexity.
      |||,
    },
    Manhattan: {
      ingredients: [
        { kind: 'Rye', qty: 2.5 },
        { kind: 'Sweet Red Vermouth', qty: 1 },
        { kind: 'Angostura', qty: 'dash' },
      ],
      garnish: 'Maraschino Cherry',
      served: 'Straight Up',
      description: 'A clear red drink.',
    },
  },
}
