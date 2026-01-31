import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.orbit_eq_univ_of_transitive
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α)
    (htrans : ∀ x y, ∃ t, ϕ t x = y) (x : α) :
    Flow.orbit ϕ x = Set.univ := by
  sorry
