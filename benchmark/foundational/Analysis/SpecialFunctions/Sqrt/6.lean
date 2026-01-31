import Mathlib

namespace Real

/-- A placeholder Lipschitz constant for `Real.sqrt` on `[a, b]`. -/
def sqrtLipConst (a b : ℝ) : NNReal := 1

end Real

lemma sqrt_lipschitz_on_with_Icc (a b : ℝ) (h : 0 < a) :
    LipschitzOnWith (Real.sqrtLipConst a b) Real.sqrt (Set.Icc a b) := by
  sorry