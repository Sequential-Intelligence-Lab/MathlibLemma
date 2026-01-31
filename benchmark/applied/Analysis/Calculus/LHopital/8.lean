import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Filter
open scoped Topology

lemma HasDerivAt.lhopital_zero_nhdsNE_comp
    {a : ℝ} {φ f g f' g' : ℝ → ℝ} {l : Filter ℝ}
    (hφ : ∀ᶠ x in 𝓝[{x | x ≠ a}] a, HasDerivAt φ 1 x)
    (hmono : ∀ᶠ x in 𝓝[{x | x ≠ a}] a, StrictMono φ)
    (hff' : ∀ᶠ y in 𝓝[{y | y ≠ φ a}] (φ a), HasDerivAt f (f' y) y)
    (hgg' : ∀ᶠ y in 𝓝[{y | y ≠ φ a}] (φ a), HasDerivAt g (g' y) y)
    (hg' : ∀ᶠ y in 𝓝[{y | y ≠ φ a}] (φ a), g' y ≠ 0)
    (hfa : Tendsto f (𝓝[{y | y ≠ φ a}] (φ a)) (𝓝 0))
    (hga : Tendsto g (𝓝[{y | y ≠ φ a}] (φ a)) (𝓝 0))
    (hdiv : Tendsto (fun y => f' y / g' y) (𝓝[{y | y ≠ φ a}] (φ a)) l) :
    Tendsto (fun x => f (φ x) / g (φ x)) (𝓝[{x | x ≠ a}] a) l := by
  sorry