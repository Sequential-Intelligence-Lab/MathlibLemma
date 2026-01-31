import Mathlib

lemma sq_comp_sqrt (f : ℝ → ℝ) :
    (fun x => (√(f x)) ^ 2) = fun x => max 0 (f x) := by
  funext x
  by_cases h : 0 ≤ f x
  · -- Case 1: f x ≥ 0
    -- (√(f x))^2 = f x and max 0 (f x) = f x
    simpa [pow_two, Real.mul_self_sqrt h, max_eq_right h]
  · -- Case 2: f x < 0, hence f x ≤ 0
    have hxlt : f x < 0 := lt_of_not_ge h
    have hxle : f x ≤ 0 := le_of_lt hxlt
    have hxsqrt : Real.sqrt (f x) = 0 := Real.sqrt_eq_zero_of_nonpos hxle
    -- Then (√(f x))^2 = 0 and max 0 (f x) = 0
    simpa [pow_two, hxsqrt, max_eq_left hxle]