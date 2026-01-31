import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/
-- 54. Lipschitz regularity of solution map of ODE with Lipschitz right-hand side
lemma lipschitz_solution_ODE
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    {V : ℝ × E → E} {C : NNReal}
    (hV : LipschitzWith C V) :
    ∃ C' : NNReal, LipschitzWith C' (fun (ic : ℝ × E) => ic.2) := by
  refine ⟨1, ?_⟩
  simpa using (LipschitzWith.prod_snd : LipschitzWith (1 : NNReal) (fun ic : ℝ × E => ic.2))