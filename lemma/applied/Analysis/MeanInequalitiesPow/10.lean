import Mathlib

lemma Real.geom_mean_eq_exp_log_mean
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ ⦃i⦄, i ∈ s → 0 ≤ w i)
    (hw' : Finset.sum s (fun i => w i) = 1)
    (hz : ∀ ⦃i⦄, i ∈ s → 0 < z i) :
    Finset.prod s (fun i => z i ^ (w i)) =
      Real.exp (Finset.sum s (fun i => w i * Real.log (z i))) := by
  classical
  -- For each i ∈ s, rewrite z i ^ w i as an exponential of a log
  have hzpow (i : ι) (hi : i ∈ s) :
      z i ^ w i = Real.exp (w i * Real.log (z i)) := by
    have hpos : 0 < z i := hz hi
    -- Real.rpow_def_of_pos: z i ^ w i = exp (log (z i) * w i)
    -- then swap the factors in the product
    simpa [Real.rpow_def_of_pos hpos, mul_comm]

  -- First, rewrite the whole product using hzpow
  have hprod :
      Finset.prod s (fun i => z i ^ w i)
        = Finset.prod s (fun i => Real.exp (w i * Real.log (z i))) := by
    refine Finset.prod_congr rfl ?h
    intro i hi
    exact hzpow i hi

  -- Then, use the product-of-exponentials = exponential-of-sum lemma
  calc
    Finset.prod s (fun i => z i ^ (w i))
        = Finset.prod s (fun i => Real.exp (w i * Real.log (z i))) := hprod
    _ = Real.exp (Finset.sum s (fun i => w i * Real.log (z i))) := by
          -- Real.exp_sum: exp (∑ i in s, f i) = ∏ i in s, exp (f i)
          -- we use it with f i = w i * log (z i), and then take the symmetric form
          simpa using
            (Real.exp_sum (s := s) (f := fun i => w i * Real.log (z i))).symm