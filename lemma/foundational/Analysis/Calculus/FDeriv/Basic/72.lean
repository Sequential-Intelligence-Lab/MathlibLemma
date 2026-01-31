import Mathlib

theorem HasFDerivAt.comp_const_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {c : E} {f : G → F} {x : G}
    {f' : G →L[𝕜] F} :
    HasFDerivAt f f' x →
    HasFDerivAt (fun y : G => (fun _ : E => c) (c)) (0 : G →L[𝕜] E) x := by
  intro hf
  -- The function is definitionally constant with value `c`
  -- so this is just the standard lemma `hasFDerivAt_const`.
  simpa using
    (hasFDerivAt_const (x := x) (c := c) :
      HasFDerivAt (fun _ : G => c) (0 : G →L[𝕜] E) x)