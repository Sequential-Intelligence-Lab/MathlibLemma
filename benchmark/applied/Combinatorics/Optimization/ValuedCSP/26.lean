import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma zsmul_sum [Ring R] [AddCommGroup α] [Module R α]
    (s : Finset ι) (z : ℤ) (f : ι → α) :
    z • s.sum f = s.sum (fun i => z • f i) := by
  sorry

/-! ### Function / composition / support -/
