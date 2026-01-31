import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 46: Real Fourier transform of compactly supported C^1 function is C^1
lemma Real.fourierIntegral_hasFDerivAt
  (f : ℝ → ℂ) (hf : ContDiff ℝ 1 f) (hcomp : IsCompact (Function.support f)) :
  ContDiff ℝ 1 (Real.fourierIntegral f) := by
  sorry
