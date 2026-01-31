import Mathlib

open InnerProductSpace

lemma inner_add_add_left {𝕜 E : Type*} [RCLike 𝕜]
    [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (x y z w : E) :
    ⟪x + y, z + w⟫_𝕜 =
      ⟪x, z⟫_𝕜 + ⟪x, w⟫_𝕜 + ⟪y, z⟫_𝕜 + ⟪y, w⟫_𝕜 := by
  sorry