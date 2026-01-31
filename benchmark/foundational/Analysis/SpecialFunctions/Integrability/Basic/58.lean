import Mathlib

open scoped BigOperators
open MeasureTheory

lemma intervalIntegrable_finset_sum
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {ι : Type _} (s : Finset ι) (f : ι → ℝ → ℝ)
    (hf : ∀ i ∈ s, IntervalIntegrable (f i) μ a b) :
    IntervalIntegrable (fun x => ∑ i ∈ s, f i x) μ a b := by
  sorry