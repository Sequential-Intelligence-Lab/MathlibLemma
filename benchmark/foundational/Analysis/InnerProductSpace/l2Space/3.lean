import Mathlib

open scoped RealInnerProductSpace

variable {ι : Type*} {G : ι → Type*}

theorem lp.inner_symm_iff_real_inner_eq
    [∀ i, NormedAddCommGroup (G i)]
    [∀ i, InnerProductSpace ℝ (G i)]
    (f g : lp G 2) :
    ⟪f, g⟫ = ⟪g, f⟫ := by
  sorry