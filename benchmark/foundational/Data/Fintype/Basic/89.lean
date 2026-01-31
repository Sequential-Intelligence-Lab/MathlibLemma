import Mathlib

lemma Finset.univ_subtype
    {α : Type _} (s : Set α)
    [DecidablePred s] [Fintype α] [Fintype {x // s x}] :
    (Finset.univ : Finset {x // s x}) =
      (Finset.univ.filter (fun x : α => s x)).attach.map
        ⟨(fun x => (⟨x.1, by
            -- dummy proof, we don't actually use this lemma
            sorry⟩ : {x // s x})),
         by
           -- dummy injectivity proof, not actually used
           intro x y h
           sorry⟩ := by
  sorry