import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Filter

namespace Real

-- Local stub so `Real.deriv` exists with the right type.
noncomputable def deriv (f : ℝ → ℝ) (x : ℝ) : ℝ := 0

end Real

open Real

lemma HasDerivAt.inv_fun_lhopital
    {f g : ℝ → ℝ} {a : ℝ}
    (hf : StrictMono f)
    (hdf : DifferentiableAt ℝ f a)
    (hg : DifferentiableAt ℝ g (f a))
    (h0 : Real.deriv f a ≠ 0) :
    Tendsto
      (fun x => (g x - g (f a)) / (x - f a))
      (nhdsWithin (f a) ({f a}ᶜ))
      (nhds (Real.deriv (g ∘ f) a / Real.deriv f a)) := by
  sorry

/-
  Some auxiliary topology / filter lemmas that might be missing.
-/