import Mathlib

open Filter Matrix

/-- For a primitive stochastic matrix, powers converge to a rank-one projection. -/
lemma Matrix.IsPrimitive.tendsto_pow_stochastic
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h_prim : A.IsPrimitive)
    (h_stoch : ∀ i, (∑ j, A i j = 1) ∧ (∀ j, 0 ≤ A i j)) :
    ∃ v w : n → ℝ,
      (∀ i, 0 < v i) ∧
      (∀ j, 0 < w j) ∧
      Tendsto (fun k : ℕ => A ^ k)
        atTop
        (nhds (Matrix.vecMulVec v w)) := by
  sorry