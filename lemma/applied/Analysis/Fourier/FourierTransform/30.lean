import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.fourierIntegral_inversion_Schwartz
  (f : ℝ → ℂ)
  (hf : True) : 
  (fun x => (1 / (2 * Real.pi)) * ∫ w, Real.fourierIntegral f w * Real.fourierChar (x * w) ) = f := by
  have h_main : (fun x => (1 / (2 * Real.pi)) * ∫ w, Real.fourierIntegral f w * Real.fourierChar (x * w)) = f := by
    funext x
    have h₁ : (1 / (2 * Real.pi)) * ∫ (w : ℝ), Real.fourierIntegral f w * Real.fourierChar (x * w) = f x := by
      sorry
    exact h₁
  exact h_main