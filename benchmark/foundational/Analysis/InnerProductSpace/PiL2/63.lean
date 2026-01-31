import Mathlib

lemma Complex.isometryOfOrthonormal_isometry
    (F : Type _) [NormedAddCommGroup F] [InnerProductSpace ℝ F]
    (v : OrthonormalBasis (Fin 2) ℝ F) :
    Isometry (Complex.isometryOfOrthonormal v) := by
  sorry