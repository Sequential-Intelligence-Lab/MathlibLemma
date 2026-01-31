import Mathlib

open scoped RealInnerProductSpace

universe u

variable {F : Type u}

/-- Fréchet derivative of the linear functional `y ↦ ⟪y, x⟫` at `x`
is (placeholder statement, proof omitted). -/
theorem gradient_id
    [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (x : F) :
    fderiv ℝ (fun y : F => (⟪y, x⟫ : ℝ)) x = 0 := by
  sorry