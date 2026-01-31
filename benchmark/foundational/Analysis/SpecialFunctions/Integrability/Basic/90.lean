import Mathlib

open MeasureTheory

variable {μ : Measure ℝ}

/-- A simple clamp function for reals, defined using `max` and `min`. -/
def clamp (c d x : ℝ) : ℝ := max c (min d x)

lemma intervalIntegrable_clamp
    {a b c d : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => clamp c d (f x)) μ a b := by
  sorry