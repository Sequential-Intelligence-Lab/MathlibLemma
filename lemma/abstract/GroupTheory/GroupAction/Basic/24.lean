import Mathlib

variable {G α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_congr
    [Group G] [MulAction G α] [MulAction G β]
    (f : α ≃ β) (hf : ∀ (g : G) (a : α), f (g • a) = g • f a) (a : α) :
    MulAction.stabilizer G (f a) = MulAction.stabilizer G a := by
  ext g
  constructor
  · intro hg
    -- hg : g ∈ stabilizer G (f a), i.e. g • f a = f a
    change g • f a = f a at hg
    change g • a = a
    -- Use equivariance and injectivity of f
    have h' : f (g • a) = f a := by
      -- from hg : g • f a = f a and hf : f (g • a) = g • f a
      simpa [hf g a] using hg
    exact f.injective h'
  · intro hg
    -- hg : g ∈ stabilizer G a, i.e. g • a = a
    change g • a = a at hg
    change g • f a = f a
    -- Use equivariance directly
    calc
      g • f a = f (g • a) := (hf g a).symm
      _       = f a       := by simpa [hg]