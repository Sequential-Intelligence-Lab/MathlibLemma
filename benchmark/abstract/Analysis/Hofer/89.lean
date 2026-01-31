import Mathlib

open Filter Topology

/-- If a sequence satisfies a linear recurrence with contraction coefficient,
then it converges. -/
lemma exists_limit_of_linear_recurrence_contraction
    (u : ℕ → ℝ) (a b : ℝ)
    (hcon : |a| < 1)
    (hrec : ∀ n, u (n + 1) = a * u n + b) :
    ∃ L : ℝ, Tendsto u Filter.atTop (nhds L) := by
  sorry