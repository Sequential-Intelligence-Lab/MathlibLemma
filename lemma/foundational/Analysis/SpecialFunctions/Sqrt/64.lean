import Mathlib

lemma isClosed_range_sqrt :
    IsClosed (Set.range Real.sqrt) := by
  -- First, identify the range of sqrt with the nonnegative reals
  have hset : Set.range Real.sqrt = Set.Ici (0 : ℝ) := by
    ext y
    constructor
    · rintro ⟨x, rfl⟩
      exact Real.sqrt_nonneg x
    · intro hy
      refine ⟨y^2, ?_⟩
      have h1 : Real.sqrt (y^2) = |y| := Real.sqrt_sq_eq_abs y
      have h2 : |y| = y := abs_of_nonneg hy
      simpa [h1, h2]
  -- Then use that [0, ∞) is closed
  simpa [hset] using
    (isClosed_Ici : IsClosed (Set.Ici (0 : ℝ)))