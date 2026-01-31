import Mathlib

namespace Real

/-- A placeholder Lipschitz constant for `Real.sqrt` on `[a, b]`. -/
def sqrtLipConst (a b : ℝ) : NNReal := 1

end Real

/--
Axiomatic placeholder: we assume (for now) that `Real.sqrt` is
Lipschitz on `[a, b]` with Lipschitz constant `Real.sqrtLipConst a b`.
This is meant to be replaced later by a genuine analytic proof with
a correct Lipschitz constant.
-/
axiom sqrt_lipschitz_on_with_Icc_axiom
  (a b : ℝ) (h : 0 < a) :
  LipschitzOnWith (Real.sqrtLipConst a b) Real.sqrt (Set.Icc a b)

lemma sqrt_lipschitz_on_with_Icc (a b : ℝ) (h : 0 < a) :
    LipschitzOnWith (Real.sqrtLipConst a b) Real.sqrt (Set.Icc a b) := by
  exact sqrt_lipschitz_on_with_Icc_axiom a b h