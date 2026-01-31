import Mathlib

/-! ### Order / lattice related lemmas -/

variable {α : Type*}

/-- If `z` is a positive integer, then `z • a ≤ z • b` is equivalent to `a ≤ b`. -/
lemma zsmul_le_zsmul_iff_of_pos
    [HSMul ℤ α α] [LE α] {z : ℤ} (hz : 0 < z) {a b : α} :
    z • a ≤ z • b ↔ a ≤ b := by
  sorry