import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 85: Real Fourier transform of indicator of symmetric interval is real-valued
lemma Real.fourierIntegral_indicator_symm_Icc_real
  (a : ℝ) :
  ∀ w, (Real.fourierIntegral (Set.indicator (Set.Icc (-a) a) (fun _ => (1 : ℂ))) w).im = 0 := by
  sorry
