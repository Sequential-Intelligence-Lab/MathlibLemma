import Mathlib

variable {𝕜 F}
  [RCLike 𝕜]
  [NormedAddCommGroup F]
  [InnerProductSpace 𝕜 F]
  [CompleteSpace F]

theorem HasGradientAt.zero :
    HasGradientAt (fun _ : F => (0 : 𝕜)) 0 (0 : F) := by
  sorry