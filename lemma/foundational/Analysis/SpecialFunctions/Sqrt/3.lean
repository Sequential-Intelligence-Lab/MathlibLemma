import Mathlib

lemma sqrt_injective_on_Ici : Set.InjOn Real.sqrt (Set.Ici (0 : ℝ)) := by
  -- Unfold InjOn: we need to show injectivity on the set {x | 0 ≤ x}
  intro x hx y hy hxy
  -- From membership in Ici, we obtain nonnegativity
  have hx0 : 0 ≤ x := hx
  have hy0 : 0 ≤ y := hy
  -- Use the characterization of sqrt on nonnegative reals
  calc
    x = Real.sqrt x * Real.sqrt x := (Real.mul_self_sqrt hx0).symm
    _ = Real.sqrt y * Real.sqrt y := by simpa [hxy]
    _ = y := Real.mul_self_sqrt hy0