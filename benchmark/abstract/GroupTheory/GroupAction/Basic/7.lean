import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.mem_fixedPoints_iff_smul_eq_self' [Monoid M] [MulAction M α] {a : α} :
    a ∈ MulAction.fixedPoints M α ↔
      ∀ g : M, g • a = a := by
  sorry
