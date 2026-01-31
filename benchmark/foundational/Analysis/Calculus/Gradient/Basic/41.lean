import Mathlib

variable {F : Type*}
variable [NormedAddCommGroup F]
variable [InnerProductSpace ℝ F]
variable [CompleteSpace F]

theorem HasGradientWithinAt.zero (s : Set F) (x : F) :
    HasGradientWithinAt (fun _ : F => (0 : ℝ)) (0 : F) s x := by
  sorry