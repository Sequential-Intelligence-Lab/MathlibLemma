import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 24: Continuity in parameter of kernel e(-L v w)
lemma VectorFourier.continuous_kernel
  {𝕜 V W : Type*} [CommRing 𝕜]
  [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  (e : AddChar 𝕜 Circle) (he : Continuous e)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (hL : Continuous fun p : V × W => L p.1 p.2) :
  Continuous (fun p : V × W => (e (-L p.1 p.2) : ℂ)) := by
  sorry
