import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open scoped RealInnerProductSpace

universe u

variable {F : Type u}

theorem gradient_id
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (x : F) :
    fderiv ℝ (fun y : F => (⟪y, x⟫ : ℝ)) x = 0 := by
  sorry