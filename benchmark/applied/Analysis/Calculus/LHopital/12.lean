import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Topology Filter

-- use `𝓝[≠] a` notation correctly: the filter comes *after* `a`
lemma deriv.lhopital_zero_nhdsNE_of_strictMono
    {a : ℝ} {f g : ℝ → ℝ}
    (hdf : ∀ᶠ x in 𝓝[≠] a, DifferentiableAt ℝ f x)
    (hdg : ∀ᶠ x in 𝓝[≠] a, DifferentiableAt ℝ g x)
    (hg' : ∀ᶠ x in 𝓝[≠] a, deriv g x ≠ 0)
    (hmono : StrictMono g)
    (hfa : Tendsto f (𝓝[≠] a) (𝓝 0))
    (hga : Tendsto g (𝓝[≠] a) (𝓝 0))
    (hdiv : Tendsto (fun x => deriv f x / deriv g x) (𝓝[≠] a) (𝓝 0)) :
    Tendsto (fun x => f x / g x) (𝓝[≠] a) (𝓝 0) := by
  sorry

lemma deriv.lhopital_zero_nhdsWithin_of_strictMono
    {a : ℝ} {f g : ℝ → ℝ}
    (hdf :
      ∀ᶠ x in nhdsWithin a ({a}ᶜ),
        DifferentiableAt ℝ f x)
    (hdg :
      ∀ᶠ x in nhdsWithin a ({a}ᶜ),
        DifferentiableAt ℝ g x)
    (hg' :
      ∀ᶠ x in nhdsWithin a ({a}ᶜ),
        deriv g x ≠ 0)
    (hmono : StrictMono g)
    (hfa :
      Tendsto f (nhdsWithin a ({a}ᶜ)) (nhds 0))
    (hga :
      Tendsto g (nhdsWithin a ({a}ᶜ)) (nhds 0))
    (hdiv :
      Tendsto (fun x => deriv f x / deriv g x)
        (nhdsWithin a ({a}ᶜ)) (nhds 0)) :
    Tendsto (fun x => f x / g x)
      (nhdsWithin a ({a}ᶜ)) (nhds 0) := by
  sorry