import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter

lemma deriv_lhopital_log
    {f g : ℝ → ℝ} {a : ℝ}
    (hdf :
      ∀ᶠ x in (nhdsWithin a {x : ℝ | x ≠ a}),
        DifferentiableAt ℝ f x)
    (hdg :
      ∀ᶠ x in (nhdsWithin a {x : ℝ | x ≠ a}),
        DifferentiableAt ℝ g x)
    (hposf :
      ∀ᶠ x in (nhdsWithin a {x : ℝ | x ≠ a}),
        0 < f x)
    (hposg :
      ∀ᶠ x in (nhdsWithin a {x : ℝ | x ≠ a}),
        0 < g x)
    (hg0  :
      ∀ᶠ x in (nhdsWithin a {x : ℝ | x ≠ a}),
        deriv f x ≠ 0)
    (hfa  :
      Tendsto f (nhdsWithin a {x : ℝ | x ≠ a}) (nhds (1 : ℝ)))
    (hga  :
      Tendsto g (nhdsWithin a {x : ℝ | x ≠ a}) (nhds (1 : ℝ)))
    (hdiv :
      Tendsto (fun x => deriv f x / (f x * (deriv g x / g x)))
        (nhdsWithin a {x : ℝ | x ≠ a}) (nhds (1 : ℝ))) :
    Tendsto (fun x => Real.log (f x) / Real.log (g x))
      (nhdsWithin a {x : ℝ | x ≠ a}) (nhds (1 : ℝ)) := by
  sorry

/-
  A few lemmas about higher derivatives and repeated L'Hôpital applications.
-/