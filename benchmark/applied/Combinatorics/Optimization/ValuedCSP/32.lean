import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma support_sub_eq_union_support {α} [AddGroup α] (f g : ι → α) :
    Function.support (fun i => f i - g i) ⊆
      Function.support f ∪ Function.support g := by
  sorry

/-! ### Finset / Fintype -/
