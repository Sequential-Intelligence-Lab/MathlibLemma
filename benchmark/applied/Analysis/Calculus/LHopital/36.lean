import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open scoped Topology
open Set Filter

lemma deriv_tendsto_slope_nhdsWithin_Icc
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a < b)
    (hdf : DifferentiableOn ℝ f (Icc a b)) :
    Tendsto (fun x => (f x - f a) / (x - a))
      (𝓝[>] a) (𝓝 (deriv f a)) := by
  sorry