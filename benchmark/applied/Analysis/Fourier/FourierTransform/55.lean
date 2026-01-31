import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-- Fourier transform of real-valued odd function is purely imaginary (skeleton) -/
lemma Real.fourierIntegral_odd_real_valued
  (f : ℝ → ℝ) (h_odd : Odd f)
  (hf : MeasureTheory.Integrable (fun x : ℝ => (f x : ℂ)) MeasureTheory.MeasureSpace.volume) :
  ∀ w : ℝ, (Real.fourierIntegral (fun x : ℝ => (f x : ℂ)) w).re = 0 := by
  sorry