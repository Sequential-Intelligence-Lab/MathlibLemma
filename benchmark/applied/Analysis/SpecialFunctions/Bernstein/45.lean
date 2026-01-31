import Mathlib

-- 46. A lemma on uniform equicontinuity of Bernstein approximations for fixed `f`
open scoped Topology

abbrev I : Type := unitInterval

lemma bernsteinApproximation_equicontinuous
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(I, E)) :
    Equicontinuous (fun n : ℕ => (bernsteinApproximation n f : I → E)) := by
  sorry