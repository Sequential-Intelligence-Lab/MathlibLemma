import Mathlib

theorem HasFDerivAtFilter.comp'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {x : E}
    {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {L : Filter E}
    (hf : HasFDerivAtFilter f f' (g x) (Filter.map g L))
    (hg : HasFDerivAtFilter g g' x L) :
    HasFDerivAtFilter (fun y => f (g y)) (f'.comp g') x L := by
  -- Establish the canonical `Tendsto` fact: g tends to `map g L` along `L`
  have hT : Filter.Tendsto g L (Filter.map g L) := by
    -- By definition, `Tendsto g L (map g L)` is `(map g L) ≤ (map g L)`
    simpa [Filter.Tendsto] using
      (le_rfl : Filter.map g L ≤ Filter.map g L)
  -- Apply the standard composition lemma and rewrite `(f ∘ g)` as `fun y => f (g y)`
  simpa [Function.comp] using hf.comp x hg hT