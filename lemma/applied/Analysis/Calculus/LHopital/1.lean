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
  -- First, apply the standard L'Hôpital lemma to `f` and `g`
  have hlim_orig :
      Tendsto (fun x => f x / g x) (𝓝[Set.Iio b] b) l :=
    HasDerivAt.lhopital_zero_left_on_Ioo
      (a := a) (b := b) (f := f) (g := g) (f' := f') (g' := g') (l := l)
      hab hf hg hfg' hf'b hg'b hdiv

  -- Show that `f/g` and `f₁/g₁` are eventually equal on the filter
  have hfg_eq :
      (fun x => f x / g x) =ᶠ[𝓝[Set.Iio b] b] fun x => f₁ x / g₁ x := by
    filter_upwards [hf₁, hg₁] with x hx₁ hx₂
    simpa [hx₁, hx₂]

  -- Transport the limit along this eventual equality
  exact hlim_orig.congr' hfg_eq