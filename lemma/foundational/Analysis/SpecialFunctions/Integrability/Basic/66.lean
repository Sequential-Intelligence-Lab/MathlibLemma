import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma intervalIntegrable_sub_const
    {μ : MeasureTheory.Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b c : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => f x - c) μ a b := by
  have h_const : IntervalIntegrable (fun x : ℝ => (c : ℝ)) μ a b := by
    apply intervalIntegrable_const
    <;>
    (try simp_all) <;>
    (try norm_num) <;>
    (try linarith)
  
  have h_diff : IntervalIntegrable (fun x => f x - c) μ a b := by
    have h1 : IntervalIntegrable (fun x : ℝ => f x - c) μ a b :=
      hf.sub h_const
    exact h1
  
  exact h_diff