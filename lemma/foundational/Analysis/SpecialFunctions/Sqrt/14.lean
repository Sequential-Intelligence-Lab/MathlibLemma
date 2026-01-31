import Mathlib

lemma sqrt_eq_iff_sq_eq_abs {x y : ℝ} (hx : 0 ≤ x) :
    √x = |y| ↔ x = y ^ 2 := by
  constructor
  · -- (→) direction
    intro h
    -- Square both sides
    have hsq : (√x) ^ 2 = (|y|) ^ 2 :=
      congrArg (fun z : ℝ => z ^ 2) h
    -- Simplify both sides: (√x)^2 = x and |y|^2 = y^2
    -- This yields exactly x = y^2
    simpa [pow_two, Real.mul_self_sqrt hx, sq_abs] using hsq
  · -- (←) direction
    intro h
    -- Rewrite √x using h, then use sqrt_sq_eq_abs
    have : √x = √(y ^ 2) := by simpa [h]
    simpa [Real.sqrt_sq_eq_abs] using this