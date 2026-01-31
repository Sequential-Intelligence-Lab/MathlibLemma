import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 65. Strict derivative of the inverse function for `𝕜 → 𝕜`. -/
lemma HasStrictDerivAt.inv_local
    {f : 𝕜 → 𝕜} {f' : 𝕜} {x : 𝕜}
    (hf : HasStrictDerivAt f f' x) (h' : f' ≠ 0) :
    HasStrictDerivAt (fun y => (1 / f') * (y - f x) + x) (1 / f') (f x) := by
  -- We build the derivative of an affine function step by step from the identity.
  have h0 : HasStrictDerivAt (fun y : 𝕜 => y) (1 : 𝕜) (f x) :=
    hasStrictDerivAt_id (f x)
  -- Subtract a constant: derivative remains 1.
  have h1 : HasStrictDerivAt (fun y : 𝕜 => y - f x) (1 : 𝕜) (f x) :=
    by
      simpa [sub_eq_add_neg] using h0.add_const (-f x)
  -- Multiply by a constant (1 / f'): derivative scales by (1 / f').
  have h2 :
      HasStrictDerivAt (fun y : 𝕜 => (1 / f') * (y - f x))
        ((1 / f') * (1 : 𝕜)) (f x) :=
    h1.const_mul (1 / f')
  -- Add a constant x: derivative unchanged.
  have h3 :
      HasStrictDerivAt (fun y : 𝕜 => (1 / f') * (y - f x) + x)
        ((1 / f') * (1 : 𝕜)) (f x) :=
    h2.add_const x
  -- Simplify the derivative expression ((1 / f') * 1) = (1 / f').
  simpa [one_mul] using h3