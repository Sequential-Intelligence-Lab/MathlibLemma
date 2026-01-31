import Mathlib

lemma inner_add_right_cancel {𝕜 E : Type*} [RCLike 𝕜]
    [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    {x y z : E} :
    inner (𝕜 := 𝕜) (E := E) x (y + z) =
      inner (𝕜 := 𝕜) (E := E) x (y + x) →
    inner (𝕜 := 𝕜) (E := E) x z =
      inner (𝕜 := 𝕜) (E := E) x x := by
  sorry