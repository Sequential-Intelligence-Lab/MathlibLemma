import Mathlib

lemma inner_add_left_iff {𝕜 E : Type*}
    [RCLike 𝕜] [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    {x y z w : E} :
    inner 𝕜 (x + y) z = inner 𝕜 (x + w) z ↔
      inner 𝕜 y z = inner 𝕜 w z := by
  sorry