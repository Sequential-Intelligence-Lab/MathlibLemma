import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Filter Set

lemma HasDerivAt.lhopital_zero_nhdsLT_of_tendsto_infty
    {a : ℝ} {f g f' g' : ℝ → ℝ}
    (hff' :
      ∀ᶠ x in nhdsWithin a (Iio a), HasDerivAt f (f' x) x)
    (hgg' :
      ∀ᶠ x in nhdsWithin a (Iio a), HasDerivAt g (g' x) x)
    (hg'  :
      ∀ᶠ x in nhdsWithin a (Iio a), g' x ≠ 0)
    (hfa  :
      Tendsto f (nhdsWithin a (Iio a)) (nhds 0))
    (hga  :
      Tendsto g (nhdsWithin a (Iio a)) (nhds 0))
    (hdiv :
      Tendsto (fun x => f' x / g' x) (nhdsWithin a (Iio a)) atTop) :
    Tendsto (fun x => f x / g x) (nhdsWithin a (Iio a)) atTop := by
  sorry