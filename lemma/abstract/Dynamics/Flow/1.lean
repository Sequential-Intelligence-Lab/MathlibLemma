import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.union {τ α} (ϕ : τ → α → α) (s t : Set α)
    (hs : IsInvariant ϕ s) (ht : IsInvariant ϕ t) :
    IsInvariant ϕ (s ∪ t) := by
  -- Unfold the definition of IsInvariant
  intro τ0
  -- We must show MapsTo (ϕ τ0) (s ∪ t) (s ∪ t)
  intro x hx
  -- hx : x ∈ s ∪ t, so split into cases
  rcases hx with hx | hx
  · -- Case x ∈ s
    have hsτ0 := hs τ0
    -- hsτ0 : MapsTo (ϕ τ0) s s
    have : ϕ τ0 x ∈ s := hsτ0 hx
    exact Or.inl this
  · -- Case x ∈ t
    have htτ0 := ht τ0
    -- htτ0 : MapsTo (ϕ τ0) t t
    have : ϕ τ0 x ∈ t := htτ0 hx
    exact Or.inr this