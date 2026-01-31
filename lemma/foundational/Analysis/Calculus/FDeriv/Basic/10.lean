import Mathlib

theorem HasFDerivWithinAt.comp_hasStrictFDerivAt_right
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {g : E → F} {f' : F →L[𝕜] G} {g' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (g '' s) (g x))
    (hg : HasStrictFDerivAt g g' x)
    (hmem : Set.MapsTo g s (g '' s)) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  -- Convert the strict derivative of `g` into a derivative within `s`.
  have hg' : HasFDerivWithinAt g g' s x :=
    hg.hasFDerivAt.hasFDerivWithinAt
  -- Show that points of `s` map into `g '' s`.
  have hsubset : s ⊆ g ⁻¹' (g '' s) := by
    intro y hy
    -- need g y ∈ g '' s
    exact ⟨y, hy, rfl⟩
  -- Apply the standard composition lemma for `HasFDerivWithinAt`.
  simpa using hf.comp x hg' hsubset