import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} {f : 𝕜 → 𝕜} {f' : 𝕜} (c : F)
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => f y • c) (f' • c) x := by
  have h1 : HasDerivAt (fun y : 𝕜 => f y • c) (f' • c) x := by
    -- Use the lemma `HasDerivAt.smul_const` by treating `f` as a function into `E = 𝕜`
    have h2 : HasDerivAt (fun y : 𝕜 => (f y : 𝕜)) f' x := hf
    -- Apply the lemma with `E = 𝕜` and `F = F`
    have h3 : HasDerivAt (fun y : 𝕜 => (f y : 𝕜) • c) (f' • c) x :=
      HasDerivAt.smul_const h2 c
    -- Simplify the expression to match the goal
    convert h3 using 1 <;> simp [smul_eq_mul]
  exact h1