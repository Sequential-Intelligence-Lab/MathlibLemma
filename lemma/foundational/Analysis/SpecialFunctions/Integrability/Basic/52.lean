import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open MeasureTheory

theorem intervalIntegrable_exp_mul_sin
    {a b : ℝ} :
    IntervalIntegrable (fun x => Real.exp x * Real.sin x) (MeasureTheory.volume : Measure ℝ) a b := by
  apply ContinuousOn.intervalIntegrable
  · -- Show that the function is continuous on the interval
    have h1 : Continuous (fun x : ℝ => Real.exp x * Real.sin x) := by
      continuity
    have h2 : ContinuousOn (fun x : ℝ => Real.exp x * Real.sin x) (Set.Icc (min a b) (max a b)) := by
      apply h1.continuousOn
    exact h2
  all_goals try simp