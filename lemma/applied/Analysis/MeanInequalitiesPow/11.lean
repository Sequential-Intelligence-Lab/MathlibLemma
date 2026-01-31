import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.arith_mean_ge_geom_mean_product
    {ι : Type _} (s : Finset ι) (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i) :
    (∑ i ∈ s, w i * z i) ≥ ∏ i ∈ s, z i ^ (w i) := by
  have h_z_nonneg : ∀ i ∈ s, 0 ≤ z i := by
    intro i hi
    have h₁ : 0 < z i := hz i hi
    linarith
  
  have h_main : ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i • z i := by
    -- Use the weighted AM-GM inequality from Mathlib
    have h₁ : ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i • z i := by
      -- Apply the weighted AM-GM inequality
      have h₂ : ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i • z i := by
        -- Use the fact that the logarithm is concave and the exponential function is increasing
        -- to derive the weighted AM-GM inequality
        -- Here, we directly use the `geom_mean_le_arith_mean_weighted` lemma from Mathlib
        -- which provides the required inequality for non-negative weights and non-negative values.
        apply Real.geom_mean_le_arith_mean_weighted
        <;>
        (try simp_all) <;>
        (try
          {
            intro i hi
            exact hw i hi
          }) <;>
        (try
          {
            intro i hi
            exact h_z_nonneg i hi
          }) <;>
        (try
          {
            simp_all [Finset.sum_const, nsmul_eq_mul]
          })
        <;>
        (try linarith)
      exact h₂
    exact h₁
  
  have h_smul_eq_mul : (∑ i ∈ s, w i • z i) = (∑ i ∈ s, w i * z i) := by
    calc
      (∑ i ∈ s, w i • z i) = ∑ i ∈ s, (w i * z i : ℝ) := by
        apply Finset.sum_congr rfl
        intro i _
        simp [smul_eq_mul]
      _ = (∑ i ∈ s, w i * z i) := by simp
  
  have h_final : ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i * z i := by
    calc
      ∏ i ∈ s, z i ^ (w i) ≤ ∑ i ∈ s, w i • z i := h_main
      _ = ∑ i ∈ s, w i * z i := by rw [h_smul_eq_mul]
  
  linarith