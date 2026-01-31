import Mathlib

lemma sqrt_image_Ioi :
    Real.sqrt '' Set.Ioi (0 : ℝ) = Set.Ioi 0 := by
  ext x
  constructor
  · intro hx
    rcases hx with ⟨y, hy, rfl⟩
    -- hy : 0 < y
    -- goal: 0 < Real.sqrt y
    exact Real.sqrt_pos.mpr hy
  · intro hx
    have hx0 : 0 < x := hx
    refine ⟨x^2, ?_, ?_⟩
    · -- show 0 < x^2
      have : 0 < x * x := mul_pos hx0 hx0
      simpa [pow_two] using this
    · -- show Real.sqrt (x^2) = x
      have hsqrt : Real.sqrt (x^2) = x := by
        simpa [Real.sqrt_sq_eq_abs, abs_of_pos hx0]
      simpa using hsqrt