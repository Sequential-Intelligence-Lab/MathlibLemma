import Mathlib

theorem HasFDerivAtFilter.comp_const_left_filter'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {c : F} {f : G → E} {x : G} {L : Filter G}
    {f' : G →L[𝕜] E} :
    HasFDerivAtFilter f f' x L →
    HasFDerivAtFilter (fun y : G => (fun _ : F => c) (c)) (0 : G →L[𝕜] F) x L := by
  intro hf
  -- The function is constant equal to `c`, so its derivative is `0`.
  -- `hasFDerivAtFilter_const` is the standard lemma for the derivative of a constant.
  simpa using
    (hasFDerivAtFilter_const (c := c) (x := x) (L := L) :
      HasFDerivAtFilter (fun _ : G => c) (0 : G →L[𝕜] F) x L)