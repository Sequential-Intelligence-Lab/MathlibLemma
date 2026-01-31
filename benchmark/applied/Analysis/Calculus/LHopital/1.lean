import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter Topology

lemma HasDerivAt.lhopital_zero_left_on_Ioo_of_eqOn
    {a b : ℝ} {f f₁ g g₁ f' g' : ℝ → ℝ} {l : Filter ℝ}
    (hab : a < b)
    (hf : ∀ x ∈ Set.Ioo a b, HasDerivAt f (f' x) x)
    (hg : ∀ x ∈ Set.Ioo a b, HasDerivAt g (g' x) x)
    (hfg' : ∀ x ∈ Set.Ioo a b, g' x ≠ 0)
    (hf₁ : ∀ᶠ x in 𝓝[Set.Iio b] b, f x = f₁ x)
    (hg₁ : ∀ᶠ x in 𝓝[Set.Iio b] b, g x = g₁ x)
    (hf'b : Tendsto f (𝓝[Set.Iio b] b) (𝓝 0))
    (hg'b : Tendsto g (𝓝[Set.Iio b] b) (𝓝 0))
    (hdiv : Tendsto (fun x => f' x / g' x) (𝓝[Set.Iio b] b) l) :
    Tendsto (fun x => f₁ x / g₁ x) (𝓝[Set.Iio b] b) l := by
  sorry