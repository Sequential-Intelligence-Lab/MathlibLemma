import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.image_of_surjective {τ α β}
    (ϕ : τ → α → α) (ψ : τ → β → β) (f : α → β)
    (hf : Function.Surjective f)
    (hconj : ∀ t, Function.Semiconj f (ϕ t) (ψ t))
    {s : Set α} (hs : IsInvariant ϕ s) :
    IsInvariant ψ (f '' s) := by
  sorry
