import Mathlib

-- 59. A lemma about uniform continuity of Bernstein approximation in `n` for fixed `x`
lemma bernsteinApproximation_cauchy_in_n
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(unitInterval, E)) (x : unitInterval) :
    Cauchy (Filter.map (fun n => bernsteinApproximation n f x) Filter.atTop) := by
  sorry