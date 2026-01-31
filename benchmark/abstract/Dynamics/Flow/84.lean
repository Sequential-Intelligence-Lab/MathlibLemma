import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.restrict_orbit_eq_subtype
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (s : Set α) (hs : IsInvariant ϕ s) (x : s) :
    Flow.orbit (ϕ.restrict hs) x =
      {y : s | ∃ t, ϕ t x ∈ s ∧ (ϕ t x = y)} := by
  sorry
