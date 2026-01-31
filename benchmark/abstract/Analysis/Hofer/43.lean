import Mathlib

open Filter Topology

/-- A monotone function on `ℝ` has left and right limits at every point. -/
lemma exists_left_right_limits_of_monotone
    {f : ℝ → ℝ} (hmono : Monotone f) (x : ℝ) :
    ∃ l r, Tendsto f (𝓝[<] x) (𝓝 l) ∧ Tendsto f (𝓝[>] x) (𝓝 r) := by
  sorry