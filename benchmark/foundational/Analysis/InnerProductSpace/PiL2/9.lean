import Mathlib

lemma EuclideanSpace.single_eq_iff
    {𝕜 ι : Type*} [RCLike 𝕜] [Fintype ι] [DecidableEq ι]
    {i j : ι} {a b : 𝕜} :
    EuclideanSpace.single i a = EuclideanSpace.single j b ↔
      (i = j ∧ a = b) ∨ (a = 0 ∧ b = 0) := by
  sorry