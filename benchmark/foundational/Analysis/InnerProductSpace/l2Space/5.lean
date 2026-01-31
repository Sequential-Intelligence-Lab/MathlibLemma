import Mathlib

open scoped RealInnerProductSpace BigOperators

variable {ι : Type*} {G : ι → Type*}

/-- A statement about the inner product on `lp G 2` over `ℝ`. -/
theorem lp_inner_eq_tsum_real
    [Fintype ι]
    [∀ i, NormedAddCommGroup (G i)]
    [∀ i, InnerProductSpace ℝ (G i)]
    [NormedAddCommGroup (lp G 2)]
    [InnerProductSpace ℝ (lp G 2)]
    (f g : lp G 2) :
    ⟪f, g⟫ = ∑' i, ⟪f i, g i⟫ :=
by
  sorry