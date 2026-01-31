import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.reverse_orbit_eq
    {τ α} [AddCommGroup τ] [TopologicalSpace τ] [IsTopologicalAddGroup τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (x : α) :
    Flow.orbit ϕ.reverse x = Flow.orbit ϕ x := by
  sorry
