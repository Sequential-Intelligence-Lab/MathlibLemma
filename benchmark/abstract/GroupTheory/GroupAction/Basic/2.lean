import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.mem_orbit_self_iff [Group G] [MulAction G α] {a b : α} :
    a ∈ MulAction.orbit G b ↔ ∃ g : G, g • b = a := by
  sorry
