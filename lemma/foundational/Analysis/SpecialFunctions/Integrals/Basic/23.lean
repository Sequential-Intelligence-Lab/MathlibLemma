import Mathlib

lemma integral_sin_sq_on_0_pi :
    ∫ x in 0..Real.pi, Real.sin x ^ 2 = Real.pi / 2 := by
  -- Mathlib already knows the value of this integral:
  -- `Real.integral_sin_sq` states that ∫₀^π sin^2 x = π/2.
  simpa using Real.integral_sin_sq