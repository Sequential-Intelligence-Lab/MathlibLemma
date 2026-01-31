import Mathlib

lemma sqrt_mem_closure_image_Ici (x : ℝ) :
    √x ∈ closure (Real.sqrt '' Set.Ici 0) := by
  by_cases hx : 0 ≤ x
  · -- Case 1: x ≥ 0, so √x is in the image
    have hmem : √x ∈ Real.sqrt '' Set.Ici (0 : ℝ) :=
      ⟨x, hx, rfl⟩
    exact subset_closure hmem
  · -- Case 2: x < 0, so √x = 0 and 0 is in the image
    have hxlt : x < 0 := lt_of_not_ge hx
    have hsqrt : √x = 0 :=
      Real.sqrt_eq_zero_of_nonpos (le_of_lt hxlt)
    -- Show that 0 is in the image of sqrt on [0, ∞)
    have h0_in_image : (0 : ℝ) ∈ Real.sqrt '' Set.Ici (0 : ℝ) := by
      refine ⟨0, ?_, ?_⟩
      · -- 0 ∈ [0, ∞)
        show 0 ≤ (0 : ℝ)
        exact le_rfl
      · -- sqrt 0 = 0
        simpa using Real.sqrt_zero
    have h0_in_closure :
        (0 : ℝ) ∈ closure (Real.sqrt '' Set.Ici (0 : ℝ)) :=
      subset_closure h0_in_image
    simpa [hsqrt] using h0_in_closure