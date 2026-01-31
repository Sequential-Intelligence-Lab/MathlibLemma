import Mathlib

open MeasureTheory

lemma Real.summable_one_div_nat_rpow_iff_integral_test {p : ℝ} (hp : 1 ≤ p) :
    Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) ↔
      MeasureTheory.IntegrableOn (fun x : ℝ => 1 / x ^ p) (Set.Ici (1 : ℝ)) := by
  sorry

lemma Real.summable_one_div_nat_rpow_iff_integral_test' {p : ℝ} (hp : 1 ≤ p) :
    Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) ↔
      MeasureTheory.IntegrableOn (fun x : ℝ => 1 / x ^ p) (Set.Ici (1 : ℝ)) := by
  sorry