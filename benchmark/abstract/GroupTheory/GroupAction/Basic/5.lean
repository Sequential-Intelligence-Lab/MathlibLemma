import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_eq_univ_iff [Group G] [MulAction G α] :
    MulAction.fixedPoints G α = Set.univ ↔
      ∀ g : G, ∀ a : α, g • a = a := by
  sorry
