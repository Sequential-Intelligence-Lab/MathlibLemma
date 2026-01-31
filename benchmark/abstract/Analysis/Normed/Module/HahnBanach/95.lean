import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

noncomputable section

open scoped ComplexConjugate

-- 96. StrongDual of ℂ is ℂ (as real or complex normed spaces)
noncomputable def StrongDual.complex_equiv_complex :
    StrongDual ℂ ℂ ≃ₗᵢ[ℂ] ℂ := by
  sorry