import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter Topology

lemma HasDerivAt.tendsto_slope_div
    {f : ℝ → ℝ} {f' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a) :
    Tendsto (fun x : ℝ => (f x - f a) / (x - a))
      (𝓝[{x | x ≠ a}] a) (𝓝 f') := by
  sorry