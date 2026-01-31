import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.comp_left {τ σ α}
    [Preorder τ] [Zero τ] [Preorder σ] [Zero σ]
    (ϕ : τ → α → α) (ψ : σ → τ)
    (hψ : ∀ t, 0 ≤ t → 0 ≤ ψ t)
    (s : Set α) (h : IsForwardInvariant ϕ s) :
    IsForwardInvariant (fun t => ϕ (ψ t)) s := by
  sorry
