import Mathlib

variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma FractionalOperation.tt_map_const {ι : Type*} {m : ℕ}
    (ω : FractionalOperation D m) (c : D) :
    FractionalOperation.tt (ι := ι) ω (fun _ _ => c) =
      ω.map (fun g _ => g (fun _ => c)) := by
  sorry