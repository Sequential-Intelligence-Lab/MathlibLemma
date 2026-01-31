import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-
Real Fourier transform sends real-valued L1 functions to continuous
functions vanishing at infinity (formulated here as a decay property).
-/
lemma Real.fourierIntegral_mem_C0
  (f : ℝ → ℝ) (hf : MeasureTheory.Integrable (fun x => (f x : ℂ))) :
  ∀ ε > (0 : ℝ), ∃ R : ℝ, ∀ w : ℝ, |w| ≥ R →
    ‖Real.fourierIntegral (fun x => (f x : ℂ)) w‖ < ε := by
  sorry