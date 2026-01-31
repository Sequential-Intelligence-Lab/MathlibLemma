import Mathlib

open scoped Real

namespace NNReal

-- Monotonicity of rpow (real exponent) in the exponent for base ≥ 1
lemma rpow_le_rpow_of_le_right
    {a : ℝ≥0} {b c : ℝ} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ b ≤ a ^ c := by
  -- Move to ℝ using the coercion from ℝ≥0 to ℝ
  have ha' : 1 ≤ (a : ℝ) := by
    exact_mod_cast ha
  -- Apply the real monotonicity lemma
  have h' : (a : ℝ) ^ b ≤ (a : ℝ) ^ c :=
    Real.rpow_le_rpow_of_exponent_le ha' h
  -- Express this inequality via the ℝ-coercions of NNReal.rpow
  have h'' :
      ((a ^ b : ℝ≥0) : ℝ) ≤ ((a ^ c : ℝ≥0) : ℝ) := by
    simpa [NNReal.coe_rpow] using h'
  -- Bring the inequality back to ℝ≥0
  exact_mod_cast h''

-- Version where the exponent is an ℝ≥0 coerced to ℝ
lemma rpow_le_rpow_of_le_right_coe
    {a b c : ℝ≥0} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ (b : ℝ) ≤ a ^ (c : ℝ) := by
  -- Coerce the inequality on exponents to ℝ
  have h' : (b : ℝ) ≤ (c : ℝ) := by
    exact_mod_cast h
  -- Apply the previous lemma
  simpa using
    (rpow_le_rpow_of_le_right (a := a) (b := (b : ℝ)) (c := (c : ℝ)) h' ha)

-- Version with NNReal.toReal as exponent for rpow
lemma rpow_le_rpow_of_le_right_toReal
    {a b c : ℝ≥0} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ (NNReal.toReal b) ≤ a ^ (NNReal.toReal c) := by
  -- Rewrite exponents using that toReal is just the real coercion
  change a ^ (b : ℝ) ≤ a ^ (c : ℝ)
  -- Reduce to the previous lemma
  exact
    rpow_le_rpow_of_le_right_coe (a := a) (b := b) (c := c) h ha

end NNReal