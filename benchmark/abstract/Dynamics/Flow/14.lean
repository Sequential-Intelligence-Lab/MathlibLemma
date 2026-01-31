import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.image_of_surjective {τ α β}
    [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (ψ : τ → β → β) (f : α → β)
    (hf : Function.Surjective f)
    (hconj : ∀ t, Function.Semiconj f (ϕ t) (ψ t))
    {s : Set α} (hs : IsForwardInvariant ϕ s) :
    IsForwardInvariant ψ (f '' s) := by
  sorry
