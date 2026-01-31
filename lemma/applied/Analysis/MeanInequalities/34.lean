import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.expect_mul_le_Lp_Lq
    {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ) {p q : ℝ}
    (hpq : True) :
    (∑ i ∈ s, f i * g i) / (s.card : ℝ)
      ≤ ((∑ i ∈ s, |f i| ^ p) / (s.card : ℝ)) ^ (1 / p) *
        (((∑ i ∈ s, |g i| ^ q) / (s.card : ℝ)) ^ (1 / q)) := by
  by_cases h : s.card = 0
  · -- Case s.card = 0
    have h₁ : (∑ i ∈ s, f i * g i) / (s.card : ℝ) = 0 := by
      have h₂ : s = ∅ := by
        rw [Finset.card_eq_zero] at h
        exact h
      rw [h₂]
      simp [Finset.sum_empty, Nat.cast_zero]
      <;> field_simp
      <;> simp_all
    
    have h₂ : ((∑ i ∈ s, |f i| ^ p) / (s.card : ℝ)) ^ (1 / p) * (((∑ i ∈ s, |g i| ^ q) / (s.card : ℝ)) ^ (1 / q)) ≥ 0 := by
      have h₃ : s = ∅ := by
        rw [Finset.card_eq_zero] at h
        exact h
      rw [h₃]
      simp [Finset.sum_empty, Nat.cast_zero]
      <;>
      (try norm_num) <;>
      (try positivity) <;>
      (try
        {
          by_cases hp : p = 0 <;>
          by_cases hq : q = 0 <;>
          simp_all [hp, hq, Real.zero_rpow, Real.zero_rpow] <;>
          norm_num <;>
          positivity
        }) <;>
      (try
        {
          positivity
        }) <;>
      (try
        {
          norm_num at *
          <;>
          positivity
        })
      <;>
      (try
        {
          by_cases hp : p = 0 <;>
          by_cases hq : q = 0 <;>
          simp_all [hp, hq, Real.zero_rpow, Real.zero_rpow] <;>
          norm_num <;>
          positivity
        })
    
    linarith
  · -- Case s.card ≠ 0
    have h₁ : (s.card : ℝ) ≠ 0 := by
      norm_cast
      <;> intro h₂
      <;> apply h
      <;> simp_all
    
    have h₂ : (∑ i ∈ s, f i * g i) / (s.card : ℝ) ≤ ((∑ i ∈ s, |f i| ^ p) / (s.card : ℝ)) ^ (1 / p) * (((∑ i ∈ s, |g i| ^ q) / (s.card : ℝ)) ^ (1 / q)) := by
      sorry
    exact h₂