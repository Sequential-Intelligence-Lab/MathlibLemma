import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_prod_nonempty_iff
    [Monoid M] [MulAction M α] [MulAction M β] {x : α × β} :
    (MulAction.orbit M x).Nonempty ↔
      (MulAction.orbit M x.1).Nonempty ∧ (MulAction.orbit M x.2).Nonempty := by
  sorry
