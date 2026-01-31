import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.reverse_isInvariant
    {τ α} [AddCommGroup τ] [TopologicalSpace τ] [IsTopologicalAddGroup τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (s : Set α) :
    IsInvariant ϕ.reverse s ↔ IsInvariant ϕ s := by
  constructor
  · -- (→) From invariance of the reversed flow to invariance of the original flow
    intro h
    -- Unfold the definition of IsInvariant pointwise
    intro t x hx
    -- Use invariance of the reversed flow at time -t, applied to x ∈ s
    have h' : ϕ.reverse (-t) x ∈ s := h (-t) hx
    -- Rewrite using the definition of the reversed flow and simplify -(-t) to t
    simpa [Flow.reverse, neg_neg] using h'
  · -- (←) From invariance of the original flow to invariance of the reversed flow
    intro h
    intro t x hx
    -- Use invariance of the original flow at time -t, applied to x ∈ s
    have h' : ϕ (-t) x ∈ s := h (-t) hx
    -- Rewrite the goal using the definition of the reversed flow
    simpa [Flow.reverse] using h'