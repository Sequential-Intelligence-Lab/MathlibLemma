import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasFDerivWithinAt.comp_tendsto'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (g '' s) (g x))
    (hg : HasFDerivWithinAt g g' s x)
    (hmaps : Set.MapsTo g s (g '' s)) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  -- Apply the chain rule for Fréchet derivatives
  apply HasFDerivWithinAt.comp
  -- Use the given Fréchet derivatives and the set mapping property
  <;> (try apply hf)
  <;> (try apply hg)
  <;> (try apply hmaps)
  -- Simplify the expression using the properties of the Fréchet derivative
  <;> simp_all