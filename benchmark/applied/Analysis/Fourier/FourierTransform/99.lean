import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

-- 100: Real Fourier transform of linear combination equal linear combination of transforms
lemma Real.fourierIntegral_linear_combination
  (ι : Type*) [Fintype ι]
  (a : ι → ℂ) (f : ι → ℝ → ℂ)
  (h_int : ∀ i, MeasureTheory.Integrable (f i)) :
  Real.fourierIntegral (fun x => ∑ i, a i * f i x) =
    fun w => ∑ i, a i * Real.fourierIntegral (f i) w := by
  sorry