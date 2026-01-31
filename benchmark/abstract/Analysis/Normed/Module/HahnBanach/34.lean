import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- StrongDual of `ℝ^n` is `ℝ^n` (as a linear isometry). -/
noncomputable def StrongDual.finPi_real_equiv {n : Type*} [Fintype n] :
    StrongDual ℝ (n → ℝ) ≃ₗᵢ[ℝ] (n → ℝ) :=
  by
    sorry