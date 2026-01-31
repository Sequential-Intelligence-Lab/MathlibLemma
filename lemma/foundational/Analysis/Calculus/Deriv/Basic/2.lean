import Mathlib

lemma HasDerivWithinAt.comp_hasFDerivWithinAt'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : 𝕜 → F} {g : F → G} {f' : F} {g' : F →L[𝕜] G}
    {x : 𝕜} {s : Set 𝕜}
    (hg : HasFDerivWithinAt g g' (f '' s) (f x))
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => g (f y)) (g' f') s x := by
  -- Turn the scalar derivative of `f` into a Fréchet derivative
  have hf' :
      HasFDerivWithinAt f
        ((1 : 𝕜 →L[𝕜] 𝕜).smulRight f') s x := by
    simpa [HasDerivWithinAt] using hf

  -- `f` maps `s` into its image `f '' s`
  have hst : Set.MapsTo f s (f '' s) := by
    intro y hy
    exact ⟨y, hy, rfl⟩

  -- Apply the chain rule for Fréchet derivatives
  have hcomp :
      HasFDerivWithinAt (fun y => g (f y))
        (g'.comp ((1 : 𝕜 →L[𝕜] 𝕜).smulRight f')) s x :=
    hg.comp x hf' hst

  -- Identify the composed linear map with the smulRight form for `g' f'`
  have hlin :
      g'.comp ((1 : 𝕜 →L[𝕜] 𝕜).smulRight f')
        = (1 : 𝕜 →L[𝕜] 𝕜).smulRight (g' f') := by
    ext z
    simp [ContinuousLinearMap.comp_apply]

  -- Rewrite the derivative map in `hcomp` using `hlin`
  have hcomp' :
      HasFDerivWithinAt (fun y => g (f y))
        ((1 : 𝕜 →L[𝕜] 𝕜).smulRight (g' f')) s x := by
    simpa [hlin] using hcomp

  -- Convert back to a scalar derivative statement
  simpa [HasDerivWithinAt] using hcomp'