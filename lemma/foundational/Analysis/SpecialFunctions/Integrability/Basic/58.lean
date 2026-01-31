import Mathlib

open scoped BigOperators
open MeasureTheory

lemma intervalIntegrable_finset_sum
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {ι : Type _} (s : Finset ι) (f : ι → ℝ → ℝ)
    (hf : ∀ i ∈ s, IntervalIntegrable (f i) μ a b) :
    IntervalIntegrable (fun x => ∑ i ∈ s, f i x) μ a b := by
  classical
  -- We do induction on the finset `s` with a dependent motive.
  revert hf
  refine
    Finset.induction_on s
      ?hbase
      ?hstep
  -- Base case: s = ∅
  · intro hf
    -- The sum over the empty set is 0, which is interval integrable.
    simpa using
      (intervalIntegrable_const (μ := μ) (a := a) (b := b) (c := (0 : ℝ)))
  -- Inductive step: insert i into s, with i ∉ s
  · intro i s hi IH hf_is
    -- IntervalIntegrable for f i
    have hfi : IntervalIntegrable (f i) μ a b :=
      hf_is i (by simp)
    -- IntervalIntegrable for all f j with j ∈ s
    have hfs : ∀ j ∈ s, IntervalIntegrable (f j) μ a b := by
      intro j hj
      exact hf_is j (by
        have : j ∈ insert i s := by simp [Finset.mem_insert, hj]
        exact this)
    -- Apply inductive hypothesis for the sum over s
    have hsum_s :
        IntervalIntegrable (fun x => ∑ j ∈ s, f j x) μ a b :=
      IH hfs
    -- Add f i to the sum over s
    have hsum_add :
        IntervalIntegrable (fun x => f i x + ∑ j ∈ s, f j x) μ a b :=
      hfi.add hsum_s
    -- Rewrite as the sum over insert i s
    simpa [Finset.sum_insert, hi] using hsum_add