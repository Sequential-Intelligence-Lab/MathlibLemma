import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_neg_mul_sq {a b c : ℝ} (hc : 0 < c) :
    IntervalIntegrable (fun x : ℝ => Real.exp (-c * x^2))
      (volume : MeasureTheory.Measure ℝ) a b := by
  -- The condition `hc` is not needed for this proof.
  have hcont : Continuous fun x : ℝ => Real.exp (-c * x ^ 2) := by
    -- Continuity of the polynomial part: x ↦ -c * x^2
    have hsq : Continuous fun x : ℝ => x ^ 2 := by
      simpa using (continuous_id.pow 2)
    have hpoly : Continuous fun x : ℝ => -c * x ^ 2 := by
      exact continuous_const.mul hsq
    -- Compose with exp to get continuity of x ↦ exp(-c * x^2)
    simpa using Real.continuous_exp.comp hpoly
  -- Continuous functions on ℝ are interval integrable on any [a, b]
  simpa using hcont.intervalIntegrable a b