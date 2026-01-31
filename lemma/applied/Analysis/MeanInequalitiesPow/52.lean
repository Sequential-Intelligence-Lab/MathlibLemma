import Mathlib

open scoped BigOperators
open NNReal

namespace NNReal

lemma geom_mean_le_arith_mean
    {ι : Type _} (s : Finset ι) (w z : ι → ℝ≥0)
    (hw' : ∑ i ∈ s, w i = (1 : ℝ≥0)) :
    (∏ i ∈ s, z i ^ (w i).toReal) ≤
      ∑ i ∈ s, w i * z i := by
  -- Convert the weight-sum condition to ℝ
  have hwR : ∑ i ∈ s, (w i : ℝ) = (1 : ℝ) := by
    simpa using congrArg (fun x : ℝ≥0 => (x : ℝ)) hw'

  -- Nonnegativity of weights in ℝ
  have hw_nonneg : ∀ i ∈ s, 0 ≤ (w i : ℝ) := by
    intro i hi
    exact (w i).coe_nonneg

  -- Nonnegativity of z's in ℝ
  have hz_nonneg : ∀ i ∈ s, 0 ≤ (z i : ℝ) := by
    intro i hi
    exact (z i).coe_nonneg

  -- Prove the inequality in ℝ
  have hR :
      (∏ i ∈ s, (z i : ℝ) ^ (w i).toReal)
        ≤ ∑ i ∈ s, (w i : ℝ) * (z i : ℝ) := by
    -- `(w i).toReal` is definally the coercion `(w i : ℝ)`
    have htoReal : ∀ i, (w i).toReal = (w i : ℝ) := by
      intro i; rfl
    -- Rewrite exponents accordingly
    have : (∏ i ∈ s, (z i : ℝ) ^ (w i).toReal)
             = ∏ i ∈ s, (z i : ℝ) ^ (w i : ℝ) := by
      refine Finset.prod_congr rfl ?_
      intro i hi
      simp [htoReal]
    -- Use the standard real inequality
    -- After rewriting, apply the lemma for ℝ
    -- We rewrite the LHS and then apply the lemma.
    -- First change using the equality `this`.
    calc
      (∏ i ∈ s, (z i : ℝ) ^ (w i).toReal)
          = ∏ i ∈ s, (z i : ℝ) ^ (w i : ℝ) := this
      _ ≤ ∑ i ∈ s, (w i : ℝ) * (z i : ℝ) := by
        -- apply the real weighted GM ≤ AM lemma
        exact Real.geom_mean_le_arith_mean_weighted
          (s := s)
          (w := fun i => (w i : ℝ))
          (z := fun i => (z i : ℝ))
          hw_nonneg hwR hz_nonneg

  -- Cast the real inequality back to ℝ≥0
  exact_mod_cast hR

end NNReal