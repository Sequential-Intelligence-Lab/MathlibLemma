import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Topology Filter
open scoped Topology

lemma HasDerivAt.lhopital_zero_nhdsNE_norm
    {a : ℝ} {f g f' g' : ℝ → ℝ}
    (hff' : ∀ᶠ x in 𝓝[{x | x ≠ a}] a, HasDerivAt f (f' x) x)
    (hgg' : ∀ᶠ x in 𝓝[{x | x ≠ a}] a, HasDerivAt g (g' x) x)
    (hg'  : ∀ᶠ x in 𝓝[{x | x ≠ a}] a, g' x ≠ 0)
    (hfa  : Tendsto f (𝓝[{x | x ≠ a}] a) (𝓝 0))
    (hga  : Tendsto g (𝓝[{x | x ≠ a}] a) (𝓝 0))
    (hnorm : Tendsto (fun x => ‖f' x / g' x‖) (𝓝[{x | x ≠ a}] a) (𝓝 0)) :
    Tendsto (fun x => ‖f x / g x‖) (𝓝[{x | x ≠ a}] a) (𝓝 0) := by
  sorry