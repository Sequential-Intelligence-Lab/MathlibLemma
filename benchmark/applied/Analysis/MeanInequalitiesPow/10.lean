import Mathlib

lemma Real.geom_mean_eq_exp_log_mean
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ ⦃i⦄, i ∈ s → 0 ≤ w i)
    (hw' : Finset.sum s (fun i => w i) = 1)
    (hz : ∀ ⦃i⦄, i ∈ s → 0 < z i) :
    Finset.prod s (fun i => z i ^ (w i)) =
      Real.exp (Finset.sum s (fun i => w i * Real.log (z i))) := by
  sorry