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
  sorry