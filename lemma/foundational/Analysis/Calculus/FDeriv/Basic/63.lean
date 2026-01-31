import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Differentiable.comp_of_mem_closure
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {g : F → G} {f : E → F}
    (hg : Differentiable 𝕜 g)
    (hf : Differentiable 𝕜 f) :
    Differentiable 𝕜 fun y => g (f y) := by
  have h_main : Differentiable 𝕜 (g ∘ f) := by
    apply Differentiable.comp hg hf
  
  -- Since `h_main` directly proves that `g ∘ f` is differentiable, we can use it to conclude the proof.
  convert h_main using 1
  <;> ext y
  <;> simp [Function.comp_apply]