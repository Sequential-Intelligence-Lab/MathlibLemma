import Mathlib

lemma toLeft_attach {α β} (u : Finset (α ⊕ β)) :
    u.toLeft.attach = u.attach.filterMap
      (fun x =>
        match x.1 with
        | Sum.inl a => some ⟨a, by
            -- proof omitted
            sorry⟩
        | Sum.inr _ => none)
      (by
        -- proof of the nodup condition omitted
        intro x y hx hy
        -- avoid pattern matching to keep the goal shape simple
        sorry) := by
  -- main proof omitted
  sorry