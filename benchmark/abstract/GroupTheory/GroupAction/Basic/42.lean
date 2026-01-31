import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_le_of_smul_eq
    [Group G] [MulAction G α] {a b : α} {g x : G}
    (h : g • a = b) (hx : x ∈ MulAction.stabilizer G b) :
    g⁻¹ * x * g ∈ MulAction.stabilizer G a := by
  sorry