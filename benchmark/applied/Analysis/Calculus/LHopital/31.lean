import Mathlib

open Filter Topology

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma HasDerivAt.tendsto_slope_mul
    {f : ℝ → ℝ} {f' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a) :
    Tendsto (fun x => (f x - f a) * (x - a)⁻¹) (𝓝[≠] a) (𝓝 f') := by
  sorry