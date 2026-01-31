import Mathlib

/-
Invariant and forward invariant sets
-/
lemma Flow.continuous_eval
    {τ α} [TopologicalSpace τ] [AddCommGroup τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (t : τ) :
    Continuous (fun x => ϕ t x) := by
  sorry