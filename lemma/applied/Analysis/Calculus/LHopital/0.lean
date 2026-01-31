import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter Topology
open scoped Interval

lemma HasDerivAt.lhopital_zero_right_on_Ioo_of_eqOn
    {a b : ℝ} {f f₁ g g₁ f' g' : ℝ → ℝ} {l : Filter ℝ}
    (hab : a < b)
    (hf : ∀ ⦃x⦄, x ∈ Set.Ioo a b → HasDerivAt f (f' x) x)
    (hg : ∀ ⦃x⦄, x ∈ Set.Ioo a b → HasDerivAt g (g' x) x)
    (hfg' : ∀ ⦃x⦄, x ∈ Set.Ioo a b → g' x ≠ 0)
    (hf₁ : ∀ᶠ x in 𝓝[>] a, f x = f₁ x)
    (hg₁ : ∀ᶠ x in 𝓝[>] a, g x = g₁ x)
    (hf'a : Tendsto f (𝓝[>] a) (𝓝 0))
    (hg'a : Tendsto g (𝓝[>] a) (𝓝 0))
    (hdiv : Tendsto (fun x => f' x / g' x) (𝓝[>] a) l) :
    Tendsto (fun x => f₁ x / g₁ x) (𝓝[>] a) l := by
  -- First apply the standard L'Hôpital lemma to `f` and `g`
  have hfg_lim :
      Tendsto (fun x => f x / g x) (𝓝[>] a) l :=
    HasDerivAt.lhopital_zero_right_on_Ioo
      hab hf hg hfg' hf'a hg'a hdiv
  -- Show that `f₁/g₁` is eventually equal to `f/g` near `a` from the right
  have hEq :
      ∀ᶠ x in 𝓝[>] a, f₁ x / g₁ x = f x / g x := by
    filter_upwards [hf₁, hg₁] with x hx₁ hx₂
    -- hx₁ : f x = f₁ x, hx₂ : g x = g₁ x
    -- Rewrite both numerator and denominator
    simpa [hx₁.symm, hx₂.symm]
  -- Transfer the limit along this eventual equality
  exact (tendsto_congr' hEq).2 hfg_lim