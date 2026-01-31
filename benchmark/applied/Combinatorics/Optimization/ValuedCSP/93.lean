import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma List.Perm.comp_ofFn {n : ℕ} (σ : Equiv.Perm (Fin n)) (x : Fin n → D) :
    List.Perm (List.ofFn x) (List.ofFn fun i => x (σ i)) := by
  sorry
