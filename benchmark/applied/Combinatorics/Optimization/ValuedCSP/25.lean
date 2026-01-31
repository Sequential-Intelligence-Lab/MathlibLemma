import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma nsmul_sum [Semiring R] [AddCommMonoid α] [Module R α]
    (s : Finset ι) (n : ℕ) (f : ι → α) :
    n • s.sum f = s.sum (fun i => n • f i) := by
  sorry
