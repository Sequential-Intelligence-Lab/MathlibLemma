import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

-- 44: Real Fourier transform is continuous from L1 to C0 (skeleton)
lemma Real.fourierIntegral_continuous_L1_to_C0 :
  Continuous
    (fun (f : {f : ℝ → ℂ // MeasureTheory.Integrable f}) =>
      Real.fourierIntegral f.1) := by
  sorry