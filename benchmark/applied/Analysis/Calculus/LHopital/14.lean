import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Filter

lemma deriv.lhopital_zero_nhdsLT_real
    {a : ℝ} {f g : ℝ → ℝ}
    (hdf : ∀ᶠ x in nhdsWithin a (Set.Iio a), DifferentiableAt ℝ f x)
    (hdg : ∀ᶠ x in nhdsWithin a (Set.Iio a), DifferentiableAt ℝ g x)
    (hg' : ∀ᶠ x in nhdsWithin a (Set.Iio a), deriv g x ≠ 0)
    (hfa : Tendsto f (nhdsWithin a (Set.Iio a)) (nhds 0))
    (hga : Tendsto g (nhdsWithin a (Set.Iio a)) (nhds 0))
    (hdiv0 :
      Tendsto (fun x => deriv f x / deriv g x)
        (nhdsWithin a (Set.Iio a)) (nhds 0)) :
    Tendsto (fun x => f x / g x) (nhdsWithin a (Set.Iio a)) (nhds 0) := by
  sorry