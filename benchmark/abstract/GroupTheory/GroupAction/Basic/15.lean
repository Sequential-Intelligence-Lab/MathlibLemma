import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_eq_univ_of_subsingleton [Monoid M] [MulAction M α] [Subsingleton α] :
    MulAction.fixedPoints M α = Set.univ := by
  sorry

/-! ### Cardinality / finiteness lemmas for orbits and fixed points -/
