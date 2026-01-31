import Mathlib

variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma List.nodup_bind_of_nodup
    {l : List α} (f : α → List β)
    (h₁ : l.Nodup)
    (h₂ : ∀ a ∈ l, (f a).Nodup)
    (h₃ : ∀ ⦃a₁ a₂⦄, a₁ ≠ a₂ → List.Disjoint (f a₁) (f a₂)) :
    (l.flatMap f).Nodup := by
  sorry