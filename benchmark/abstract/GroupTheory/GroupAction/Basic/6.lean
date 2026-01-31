import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_nonempty_iff [Group G] [MulAction G α] :
    (MulAction.fixedPoints G α).Nonempty ↔
      ∃ a : α, ∀ g : G, g • a = a := by
  sorry
