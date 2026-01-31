import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma FractionalOperation.IsSymmetric_of_perm
    {ω : FractionalOperation D m}
    (h : ∀ x y : Fin m → D,
      (∃ σ : Equiv.Perm (Fin m), y = fun i => x (σ i)) →
        ∀ g ∈ ω, g x = g y) :
    ∀ x y : Fin m → D,
      List.Perm (List.ofFn x) (List.ofFn y) → ∀ g ∈ ω, g x = g y := by
  sorry
