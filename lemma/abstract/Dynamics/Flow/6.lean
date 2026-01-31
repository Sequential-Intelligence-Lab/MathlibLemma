import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.inter {τ α} [Preorder τ] [Zero τ]
    (ϕ : τ → α → α) (s t : Set α)
    (hs : IsForwardInvariant ϕ s) (ht : IsForwardInvariant ϕ t) :
    IsForwardInvariant ϕ (s ∩ t) := by
  -- Unfold the definition of forward invariance in the hypotheses and the goal
  unfold IsForwardInvariant at hs ht ⊢
  -- Introduce a time parameter and its nonnegativity
  intro u hu
  -- We must show: MapsTo (ϕ u) (s ∩ t) (s ∩ t)
  intro x hx
  -- Break membership in the intersection into two parts
  rcases hx with ⟨hx_s, hx_t⟩
  -- Use forward invariance of each set separately
  have hx_s' : ϕ u x ∈ s := hs hu hx_s
  have hx_t' : ϕ u x ∈ t := ht hu hx_t
  -- Combine the two to get membership in the intersection
  exact ⟨hx_s', hx_t'⟩