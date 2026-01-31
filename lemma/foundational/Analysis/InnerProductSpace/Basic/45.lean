import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma inner_add_right_cancel {𝕜 E : Type*} [RCLike 𝕜]
    [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    {x y z : E} :
    inner (𝕜 := 𝕜) (E := E) x (y + z) =
      inner (𝕜 := 𝕜) (E := E) x (y + x) →
    inner (𝕜 := 𝕜) (E := E) x z =
      inner (𝕜 := 𝕜) (E := E) x x := by
  intro h
  -- Use the linearity of the inner product to expand both sides of the given equation.
  simp [inner_add_right, inner_add_left] at h ⊢
  -- Simplify the equation by canceling out the common term ⟨x, y⟩.
  simp_all only [add_left_inj, add_right_inj, add_assoc, add_left_comm, add_right_comm]
  -- The simplified equation now directly shows that ⟨x, z⟩ = ⟨x, x⟩.
  <;> linarith