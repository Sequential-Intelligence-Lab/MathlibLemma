import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.card_subtype_eq_filter {s : Finset α} (p : α → Prop) [DecidablePred p]
    [Fintype {x // x ∈ s ∧ p x}] :
    Fintype.card {x // x ∈ s ∧ p x} = (s.filter p).card := by
  classical
  -- Build an equivalence between the subtype and the elements of `s.filter p`
  have hEquiv : {x // x ∈ s ∧ p x} ≃ {x // x ∈ s.filter p} :=
  { toFun := fun x => ⟨x.1, Finset.mem_filter.2 x.2⟩
    , invFun := fun x => ⟨x.1, Finset.mem_filter.1 x.2⟩
    , left_inv := by
        intro x
        cases x with
        | mk x hx =>
          apply Subtype.ext
          simp
    , right_inv := by
        intro x
        cases x with
        | mk x hx =>
          apply Subtype.ext
          simp }
  calc
    Fintype.card {x // x ∈ s ∧ p x}
        = Fintype.card {x // x ∈ s.filter p} :=
          Fintype.card_congr hEquiv
    _ = (s.filter p).card := by
          simpa using Fintype.card_coe (s.filter p)