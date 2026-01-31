import Mathlib

variable {α β γ δ ι κ D C R S : Type*}

-- Add the needed typeclass assumptions on `C`
variable [AddCommMonoid C] [PartialOrder C] [IsOrderedAddMonoid C]

/-! ### Order / lattice related lemmas -/
lemma ValuedCSP.Instance.evalSolution_congr
    {Γ : ValuedCSP D C} {ι : Type*}
    (I : Γ.Instance ι) {x y : ι → D}
    (h : ∀ i, x i = y i) :
    I.evalSolution x = I.evalSolution y := by
  sorry