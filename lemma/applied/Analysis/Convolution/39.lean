import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem posConvolution_zero_right
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (f : ℝ → E) (L : E →L[ℝ] E' →L[ℝ] F) (ν : MeasureTheory.Measure ℝ) :
  MeasureTheory.posConvolution f (fun _ => (0 : E')) L ν = 0 := by
  funext y
  have h3 : (∫ x in Set.Icc (0 : ℝ) y, L (f x) ((fun _ : ℝ => (0 : E')) (y - x)) ∂ν) = (0 : F) := by
    have h4 : ∀ x : ℝ, L (f x) ((fun _ : ℝ => (0 : E')) (y - x)) = (0 : F) := by
      intro x
      have h5 : (fun _ : ℝ => (0 : E')) (y - x) = (0 : E') := by
        simp
      rw [h5]
      have h6 : L (f x) (0 : E') = (0 : F) := by
        simp
      exact h6
    simp_rw [h4]
    simp
  simp [MeasureTheory.posConvolution, h3]