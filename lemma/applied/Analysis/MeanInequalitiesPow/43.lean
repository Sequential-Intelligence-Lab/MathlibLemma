import Mathlib

open scoped BigOperators

variable {ι : Type*} {s : Finset ι}

lemma Real.sum_arith_mean_pow_le_l2_norm_sq
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1) :
    (∑ i ∈ s, w i * z i) ^ 2 ≤ ∑ i ∈ s, w i * (z i) ^ 2 := by
  -- Let m be the weighted mean
  let m : ℝ := ∑ j ∈ s, w j * z j

  -- 1. The weighted variance is nonnegative
  have h_nonneg :
      0 ≤ ∑ i ∈ s, w i * (z i - m) ^ 2 := by
    apply Finset.sum_nonneg
    intro i hi
    have hw_nonneg : 0 ≤ w i := hw i hi
    have hsq_nonneg : 0 ≤ (z i - m) ^ 2 := sq_nonneg _
    exact mul_nonneg hw_nonneg hsq_nonneg

  -- 2. Expand each term w i * (z i - m)^2
  have h_expand :
      ∑ i ∈ s, w i * (z i - m) ^ 2
        = ∑ i ∈ s, (w i * (z i) ^ 2 - 2 * m * (w i * z i) + w i * m ^ 2) := by
    apply Finset.sum_congr rfl
    intro i hi
    ring

  -- 3. Evaluate the whole sum and simplify using the assumptions
  have h_eval :
      ∑ i ∈ s, w i * (z i - m) ^ 2
        = ∑ i ∈ s, w i * (z i) ^ 2 - m ^ 2 := by
    -- Start from the expanded form
    calc
      ∑ i ∈ s, w i * (z i - m) ^ 2
          = ∑ i ∈ s,
              (w i * (z i) ^ 2 - 2 * m * (w i * z i) + w i * m ^ 2) := h_expand
      _ = (∑ i ∈ s, w i * (z i) ^ 2)
            - (∑ i ∈ s, 2 * m * (w i * z i))
            + (∑ i ∈ s, w i * m ^ 2) := by
          -- split the sum of (a - b + c) into sums of a, b, c
          simp [Finset.sum_add_distrib, sub_eq_add_neg, add_comm, add_left_comm,
            add_assoc]
      _ = (∑ i ∈ s, w i * (z i) ^ 2)
            - (2 * m * ∑ i ∈ s, w i * z i)
            + (m ^ 2 * ∑ i ∈ s, w i) := by
          -- factor constants out of sums
          simp [Finset.mul_sum, Finset.sum_mul, mul_comm, mul_left_comm,
            mul_assoc]
      _ = (∑ i ∈ s, w i * (z i) ^ 2)
            - 2 * m ^ 2 + m ^ 2 := by
          -- use the definition of m and hw'
          have : ∑ i ∈ s, w i * z i = m := rfl
          simp [this, hw', pow_two, mul_assoc, mul_comm, mul_left_comm]
      _ = ∑ i ∈ s, w i * (z i) ^ 2 - m ^ 2 := by
          ring

  -- 4. From nonnegativity of the variance to the desired inequality
  have hm_le :
      m ^ 2 ≤ ∑ i ∈ s, w i * (z i) ^ 2 := by
    -- From 0 ≤ A - m^2 we get m^2 ≤ A via sub_nonneg
    have : 0 ≤ ∑ i ∈ s, w i * (z i) ^ 2 - m ^ 2 := by
      simpa [h_eval] using h_nonneg
    exact (sub_nonneg.mp this)

  -- 5. Rewrite m back in terms of the sum
  simpa [m, pow_two] using hm_le