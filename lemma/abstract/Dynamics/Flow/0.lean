import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.inter {τ α} (ϕ : τ → α → α) (s t : Set α)
    (hs : IsInvariant ϕ s) (ht : IsInvariant ϕ t) :
    IsInvariant ϕ (s ∩ t) := by
  -- Unfold the definition of invariance
  unfold IsInvariant at hs ht ⊢
  -- Fix a parameter u : τ
  intro u
  -- We must show that ϕ u maps s ∩ t into s ∩ t
  intro x hx
  -- Split membership in the intersection
  rcases hx with ⟨hx_s, hx_t⟩
  -- Use invariance of s and t for this u
  have hx_s' : ϕ u x ∈ s := hs u hx_s
  have hx_t' : ϕ u x ∈ t := ht u hx_t
  -- Combine to get membership in the intersection
  exact ⟨hx_s', hx_t'⟩