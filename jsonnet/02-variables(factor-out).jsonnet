local house_rum = 'Banks Rum';
// NOTE: move out of Syrup
local house_syrup = "Simple Syrup";

{
  local pour = 1.5,
  // NOTE: use small sip represent 0.5 fl oz
  local small_sip = 0.5,

  Daiquiri: {
    ingredients: [
      { kind: house_rum, qty: pour },
      { kind: 'Lime', qty: 1 },
      { kind: house_syrup, qty: small_sip },
    ],
    served: 'Straight Up',
  },
  Mojito: {
    ingredients: [
      {
        kind: 'Mint',
        action: 'muddle',
        qty: 6,
        unit: 'leaves',
      },
      { kind: house_rum, qty: pour },
      { kind: 'Lime', qty: 0.5 },
      { kind: house_syrup, qty: small_sip },
      { kind: 'Soda', qty: 3 },
    ],
    garnish: 'Lime wedge',
    served: 'Over crushed ice',
  },
}
