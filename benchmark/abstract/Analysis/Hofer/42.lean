import Mathlib

/-- If a real function is Lipschitz on a compact interval, then it is uniformly continuous
on that interval. -/
lemma LipschitzOn.uniformContinuousOn_Icc
    {f : ℝ → ℝ} {K : NNReal} {a b : ℝ}
    (hK : LipschitzOnWith K f (Set.Icc a b)) :
    UniformContinuousOn f (Set.Icc a b) := by
  sorry