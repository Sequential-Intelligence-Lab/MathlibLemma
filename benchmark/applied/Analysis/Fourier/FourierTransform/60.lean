import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 61: Fourier transform of a compactly supported function is entire (skeleton)
lemma Real.fourierIntegral_entire_of_compact_support
  (f : ℝ → ℂ) (hcomp : IsCompact (Function.support f)) :
  AnalyticOn ℂ (fun z => ∫ x : ℝ, Complex.exp (Complex.I * (z * (x : ℂ))) * f x) Set.univ := by
  sorry