import Mathlib

lemma Real.inf_le_arith_mean
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    s.inf' hs z ≤ ∑ i ∈ s, w i * z i := by
  classical
  -- Let m be the infimum of z over s
  set m : ℝ := s.inf' hs z
  have hle_m_z : ∀ {i}, i ∈ s → m ≤ z i := by
    intro i hi
    -- By definition of inf' over a finite nonempty set
    -- `Finset.inf'_le` : inf' s h f ≤ f a for a ∈ s
    -- with f := z
    simpa [m] using (Finset.inf'_le (s := s) (f := z) hi)

  -- For each i ∈ s, multiply the inequality m ≤ z i by w i ≥ 0
  have hpoint :
      ∀ {i}, i ∈ s → w i * m ≤ w i * z i := by
    intro i hi
    have hmz : m ≤ z i := hle_m_z hi
    have hwi : 0 ≤ w i := hw i hi
    -- Use monotonicity of multiplication by a nonnegative left factor
    have := mul_le_mul_of_nonneg_left hmz hwi
    -- This gives w i * m ≤ w i * z i directly
    exact this

  -- Sum the inequalities over s
  have hsum :
      (∑ i ∈ s, w i * m) ≤ ∑ i ∈ s, w i * z i := by
    exact Finset.sum_le_sum (by
      intro i hi
      exact hpoint hi)

  -- Rewrite the left-hand sum using sum_mul
  have hleft :
      (∑ i ∈ s, w i * m) = (∑ i ∈ s, w i) * m := by
    -- sum_mul: (∑ x in s, f x) * a = ∑ x in s, f x * a
    -- Instantiate with f := fun i => w i, a := m
    -- Note our sum is over i∈s, i.e. `∑ i in s, w i * m`
    -- so we need symmetry
    symm
    simpa using
      (Finset.sum_mul (s := s) (f := fun i => w i) (a := m))

  -- Use that the weights sum to 1
  have hleft' : (∑ i ∈ s, w i * m) = m := by
    -- Replace (∑ i∈s, w i) by 1 using hw'
    -- and simplify (1 * m) to m
    simpa [hleft, hw', one_mul]

  -- Combine with hsum to obtain the desired inequality
  have : m ≤ ∑ i ∈ s, w i * z i := by
    -- rewrite the left side of hsum using hleft'
    simpa [hleft'] using hsum

  -- Now rewrite m back as s.inf' hs z
  simpa [m] using this