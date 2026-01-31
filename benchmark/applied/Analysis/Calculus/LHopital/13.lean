import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Topology Filter

lemma deriv.lhopital_zero_nhdsGT_norm
    {a : ℝ} {f g : ℝ → ℝ}
    (hdf : ∀ᶠ x in 𝓝[>] a, DifferentiableAt ℝ f x)
    (hdg : ∀ᶠ x in 𝓝[>] a, DifferentiableAt ℝ g x)
    (hg' : ∀ᶠ x in 𝓝[>] a, deriv g x ≠ 0)
    (hfa : Tendsto f (𝓝[>] a) (𝓝 0))
    (hga : Tendsto g (𝓝[>] a) (𝓝 0))
    (hnorm : Tendsto (fun x => ‖deriv f x / deriv g x‖) (𝓝[>] a) (𝓝 0)) :
    Tendsto (fun x => ‖f x / g x‖) (𝓝[>] a) (𝓝 0) := by
  sorry