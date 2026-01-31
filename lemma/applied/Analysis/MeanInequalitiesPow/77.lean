import Mathlib

lemma Real.geom_mean_le_arith_mean_of_sum_eq_one
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hs : s.Nonempty)
    (hw' : ∑ i ∈ s, w i = (1 : ℝ))
    (hz : ∀ i ∈ s, 0 < z i)
    (hsum : ∑ i ∈ s, w i * z i = (1 : ℝ)) :
    ∏ i ∈ s, z i ^ (w i) ≤ (1 : ℝ) := by
  classical

  -- Step 1: bound the sum of w i * log (z i) using log x ≤ x - 1
  have h1 :
      (∑ i ∈ s, w i * Real.log (z i))
        ≤ ∑ i ∈ s, w i * (z i - 1) := by
    refine Finset.sum_le_sum ?_
    intro i hi
    have hzpos := hz i hi
    have hlog := Real.log_le_sub_one_of_pos hzpos
    have hnonneg := hw i hi
    have hmul := mul_le_mul_of_nonneg_left hlog hnonneg
    simpa [mul_sub, mul_one] using hmul

  -- Step 2: rewrite ∑ w i * (z i - 1) in terms of given sums
  have hsum_zero :
      (∑ i ∈ s, w i * (z i - 1)) = 0 := by
    -- expand and use the hypotheses hsum and hw'
    simp [mul_sub, Finset.sum_sub_distrib, hsum, hw']

  -- So ∑ w i * log (z i) ≤ 0
  have hlog_le_zero :
      (∑ i ∈ s, w i * Real.log (z i)) ≤ 0 := by
    simpa [hsum_zero] using h1

  -- Step 3: express log of the product as the sum
  have hzpow_pos :
      ∀ i ∈ s, 0 < z i ^ w i := by
    intro i hi
    exact Real.rpow_pos_of_pos (hz i hi) _

  -- log of product equals sum of logs
  have hlog_prod' :
      Real.log (∏ i ∈ s, z i ^ w i)
        = ∑ i ∈ s, Real.log (z i ^ w i) := by
    have hne : ∀ i ∈ s, z i ^ w i ≠ 0 := by
      intro i hi; exact ne_of_gt (hzpow_pos i hi)
    -- Real.log_prod expects nonzero factors
    simpa using
      (Real.log_prod (s := s) (f := fun i => z i ^ w i) hne)

  -- rewrite each log (z i ^ w i) as w i * log (z i)
  have hsum_log :
      (∑ i ∈ s, Real.log (z i ^ w i))
        = ∑ i ∈ s, w i * Real.log (z i) := by
    refine Finset.sum_congr rfl ?_
    intro i hi
    have hzpos := hz i hi
    -- log (a^b) = b * log a, for a > 0
    simpa [Real.log_rpow, hzpos, mul_comm] 

  have hlog_prod :
      Real.log (∏ i ∈ s, z i ^ w i)
        = ∑ i ∈ s, w i * Real.log (z i) := by
    simpa [hsum_log] using hlog_prod'

  -- Now we have log (product) ≤ 0
  have hlog_prod_le :
      Real.log (∏ i ∈ s, z i ^ w i) ≤ 0 := by
    simpa [hlog_prod] using hlog_le_zero

  -- Step 4: use exp monotonicity to pass inequality back to the base
  have hposprod : 0 < ∏ i ∈ s, z i ^ w i := by
    refine Finset.prod_pos ?_
    intro i hi
    exact hzpow_pos i hi

  -- exp is increasing: from log P ≤ 0 we get P ≤ 1
  have hfinal :
      ∏ i ∈ s, z i ^ w i ≤ (1 : ℝ) := by
    have := Real.exp_le_exp.mpr hlog_prod_le
    -- exp (log P) = P (since P > 0), and exp 0 = 1
    simpa [Real.exp_log hposprod] using this

  exact hfinal