local Base = {
  f: 2,
  # NOTE: The self keyword, a reference to the current object
  g: self.f + 100,
};

local WrapperBase = {
  Base: Base,
};

{
  Derived: Base + {
    f: 5,
    # NOTE: The super keyword is used to access fields on a base object.
    old_f: super.f,
    old_g: super.g,
  },
  WrapperDerived: WrapperBase + {
    // NOTE: The object composition operator +, which merges two objects, 
    // choosing the right hand side when fields collide
    Base+: { f: 5 },
  },
}
