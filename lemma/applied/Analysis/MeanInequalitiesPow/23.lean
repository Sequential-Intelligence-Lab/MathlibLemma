import Mathlib

lemma Real.sum_arith_mean_le_sup
    {ι : Type _} {s : Finset ι}
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∑ i ∈ s, w i * z i ≤ s.sup' hs z := by
  classical
  -- Let M be the supremum (maximum) of z over s
  set M : ℝ := s.sup' hs z

  -- Each term w i * z i is bounded above by w i * M
  have h_term :
      ∀ ⦃i⦄, i ∈ s → w i * z i ≤ w i * M := by
    intro i hi
    -- z i ≤ M since M is the sup' over s
    have hzi : z i ≤ M := by
      -- le_sup' : z i ≤ s.sup' hs z for i ∈ s
      exact Finset.le_sup' (s := s) (f := z) hi
    -- multiply by nonnegative weight w i
    exact mul_le_mul_of_nonneg_left hzi (hw i hi)

  -- Sum the pointwise inequalities over s
  have hsum :
      ∑ i ∈ s, w i * z i ≤ ∑ i ∈ s, w i * M :=
    Finset.sum_le_sum (by
      intro i hi
      exact h_term hi)

  -- Simplify the right-hand side sum: factor out the constant M
  have hRHS :
      ∑ i ∈ s, w i * M = M * ∑ i ∈ s, w i := by
    -- convert w i * M to M * w i to use mul_sum
    calc
      ∑ i ∈ s, w i * M
          = ∑ i ∈ s, M * w i := by
              refine Finset.sum_congr rfl ?_
              intro i hi
              ring
      _ = M * ∑ i ∈ s, w i := by
              simpa [Finset.mul_sum]

  -- Use the fact that the weights sum to 1
  have hRHS' : ∑ i ∈ s, w i * M = M := by
    calc
      ∑ i ∈ s, w i * M
          = M * ∑ i ∈ s, w i := hRHS
      _ = M * 1 := by simpa [hw']
      _ = M := by ring

  -- Combine everything and rewrite M as s.sup' hs z
  calc
    ∑ i ∈ s, w i * z i
        ≤ ∑ i ∈ s, w i * M := hsum
    _ = M := hRHS'
    _ = s.sup' hs z := by simpa [M]