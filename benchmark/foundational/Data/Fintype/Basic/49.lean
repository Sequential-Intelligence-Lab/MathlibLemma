import Mathlib

lemma Finset.univ_filter_subtype {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    (Finset.univ.filter (fun x : α => p x)) =
      (Fintype.elems (α := { x // p x })).map
        ⟨Subtype.val, by
          intro x y h
          cases x
          cases y
          cases h
          rfl⟩ := by
  sorry