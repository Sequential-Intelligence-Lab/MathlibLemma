import Mathlib

lemma HasDerivAt.comp_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : F → 𝕜} {g : 𝕜 → F} {x : 𝕜} {f' : F →L[𝕜] 𝕜} {g' : F}
    (hf : HasFDerivAt f f' (g x))
    (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f (g y)) (f' g') x := by
  -- Turn `hg` into a Fréchet derivative
  have hgF : HasFDerivAt g ((1 : 𝕜 →L[𝕜] 𝕜).smulRight g') x :=
    hg.hasFDerivAt
  -- Apply the chain rule for Fréchet derivatives
  have hcompF :
      HasFDerivAt (fun y => f (g y))
        (f'.comp ((1 : 𝕜 →L[𝕜] 𝕜).smulRight g')) x :=
    hf.comp x hgF
  -- Interpret this as a scalar derivative and compute the scalar
  have hcompD := hcompF.hasDerivAt
  -- Simplify the resulting derivative:
  -- ((f'.comp ((1).smulRight g')) 1) = f' g'
  have hderiv_eq :
      (f'.comp ((1 : 𝕜 →L[𝕜] 𝕜).smulRight g')) 1 = f' g' := by
    -- By definition of comp and smulRight:
    -- (f'.comp L) x = f' (L x)
    -- ((1).smulRight g') t = t • g'
    simpa [ContinuousLinearMap.comp_apply,
           ContinuousLinearMap.smulRight_apply,
           one_smul]
  -- Conclude using this simplification
  simpa [hderiv_eq] using hcompD