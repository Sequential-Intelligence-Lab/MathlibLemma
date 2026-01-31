import Mathlib

open Real

lemma fourier_series_bernoulli_on_real
    (k : ℕ) (hk : k ≠ 1) (x : UnitAddCircle) :
    ((periodizedBernoulli k x : ℝ) : ℂ) =
      ∑' n : ℤ,
        fourierCoeff
          (fun y : UnitAddCircle => ((periodizedBernoulli k y : ℝ) : ℂ)) n *
          fourier n x := by
  sorry