import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.comp_left {τ σ α} (ϕ : τ → α → α) (ψ : σ → τ)
    (s : Set α) (h : IsInvariant ϕ s) :
    IsInvariant (fun t => ϕ (ψ t)) s := by
  sorry
