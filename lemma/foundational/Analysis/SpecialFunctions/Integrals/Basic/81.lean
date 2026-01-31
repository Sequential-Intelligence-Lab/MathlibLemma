import Mathlib

lemma integral_pow_on_unit_interval_shift (n : ℕ) :
    ∫ x in (0 : ℝ)..1, (1 - x)^n = 1 / (n + 1) := by
  -- Step 1: change of variables u = 1 - x
  have hchange :
      ∫ x in (0 : ℝ)..1, (1 - x)^n = ∫ x in (0 : ℝ)..1, x^n := by
    -- Use the standard substitution lemma for f (d - x)
    simpa using
      (intervalIntegral.integral_comp_sub_left
        (a := (0 : ℝ)) (b := 1) (d := 1)
        (f := fun u : ℝ => u^n))
  -- Step 2: known formula for ∫ x^n from 0 to 1
  have hpow :
      ∫ x in (0 : ℝ)..1, x^n = 1 / (n + 1) := by
    -- intervalIntegral.integral_pow gives (1^(n+1) - 0^(n+1)) / (n+1),
    -- which simplifies to 1 / (n + 1).
    simpa using
      (intervalIntegral.integral_pow (a := (0 : ℝ)) (b := 1) (n := n))
  -- Step 3: combine the equalities
  calc
    ∫ x in (0 : ℝ)..1, (1 - x)^n
        = ∫ x in (0 : ℝ)..1, x^n := hchange
    _   = 1 / (n + 1) := hpow