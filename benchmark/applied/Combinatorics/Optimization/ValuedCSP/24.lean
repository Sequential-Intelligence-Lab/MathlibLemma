import Mathlib

/-! ### Order / lattice related lemmas -/

lemma zsmul_lt_zsmul_iff_of_neg
    {α : Type*} [HSMul ℤ α α] [LT α]
    {z : ℤ} (hz : z < 0) {a b : α} :
    z • a < z • b ↔ b < a := by
  sorry