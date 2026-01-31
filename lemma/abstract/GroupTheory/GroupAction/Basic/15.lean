import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_eq_univ_of_subsingleton
    [Monoid M] [MulAction M α] [Subsingleton α] :
    MulAction.fixedPoints M α = Set.univ := by
  apply Set.ext
  intro x
  constructor
  · intro _hx
    trivial
  · intro _hx
    -- Need to show: ∀ m : M, m • x = x
    intro m
    simpa using (Subsingleton.elim (m • x) x)

/-! ### Cardinality / finiteness lemmas for orbits and fixed points -/