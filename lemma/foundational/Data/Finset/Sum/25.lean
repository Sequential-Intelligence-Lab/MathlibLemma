import Mathlib

lemma disjSum_eq_singleton_iff {α β} {s : Finset α} {t : Finset β} {x : α ⊕ β} :
    s.disjSum t = {x} ↔
      (∃ a, x = .inl a ∧ s = {a} ∧ t = ∅) ∨
      ∃ b, x = .inr b ∧ s = ∅ ∧ t = {b} := by
  classical
  -- Case split on `x`
  cases x with
  | inl a =>
      -- Now the statement is specialized to `x = Sum.inl a`
      constructor
      · -- → direction
        intro h
        -- `Sum.inl a` is in `s.disjSum t`
        have hx_mem : (Sum.inl a : α ⊕ β) ∈ s.disjSum t := by
          simpa [h]
        -- This implies `a ∈ s`
        have ha : a ∈ s := by
          simpa [Finset.disjSum] using hx_mem
        -- Show `t` is empty: any `b ∈ t` would give an impossible `Sum.inr b ∈ {Sum.inl a}`
        have ht_empty : t = (∅ : Finset β) := by
          apply Finset.eq_empty_iff_forall_notMem.mpr
          intro b hb
          have hb_in_disj : (Sum.inr b : α ⊕ β) ∈ s.disjSum t := by
            simpa [Finset.disjSum, hb]
          have hb_in_singleton :
              (Sum.inr b : α ⊕ β) ∈ ({Sum.inl a} : Finset (α ⊕ β)) := by
            simpa [h] using hb_in_disj
          -- But `{Sum.inl a}` cannot contain `Sum.inr b`
          simpa using hb_in_singleton
        -- Show every element of `s` is equal to `a`
        have hsubset : ∀ a' ∈ s, a' = a := by
          intro a' ha'
          have ha'_in_disj :
              (Sum.inl a' : α ⊕ β) ∈ s.disjSum t := by
            simpa [Finset.disjSum, ha']
          have ha'_in_singleton :
              (Sum.inl a' : α ⊕ β) ∈ ({Sum.inl a} : Finset (α ⊕ β)) := by
            simpa [h] using ha'_in_disj
          have h_eq : (Sum.inl a' : α ⊕ β) = Sum.inl a := by
            -- membership in a singleton finset tells us equality of the element
            simpa using ha'_in_singleton
          -- Extract equality on `α` from equality of `Sum.inl`s
          have : a' = a := by
            simpa using h_eq
          exact this
        -- Hence `s = {a}`
        have hs_singleton : s = ({a} : Finset α) := by
          ext a'
          constructor
          · intro ha'
            have := hsubset a' ha'
            subst this
            simp
          · intro ha'
            have : a' = a := by
              simpa using ha'
            subst this
            exact ha
        -- Package into the left disjunct on the RHS
        left
        refine ⟨a, rfl, hs_singleton, ht_empty⟩
      · -- ← direction
        intro hdisj
        cases hdisj with
        | inl hleft =>
            rcases hleft with ⟨a', hx, hs, ht⟩
            -- Here `x = inl a` from the case split; `hx : inl a = inl a'`
            -- implies `a' = a`. After rewriting `s` and `t`, we prove equality by extensionality.
            cases hx
            subst hs
            subst ht
            -- goal: ({a} : Finset α).disjSum (∅ : Finset β) = {Sum.inl a}
            ext y
            by_cases hya : y = Sum.inl a
            · subst hya
              simp [Finset.disjSum]
            · have : y ≠ Sum.inl a := hya
              simp [Finset.disjSum, this]
        | inr hright =>
            rcases hright with ⟨b, hx, hs, ht⟩
            -- Impossible: `x` is `inl a` in this branch, but RHS says `x = inr b`
            cases hx
  | inr b =>
      -- Now the statement is specialized to `x = Sum.inr b`
      constructor
      · -- → direction
        intro h
        -- `Sum.inr b` is in `s.disjSum t`
        have hx_mem : (Sum.inr b : α ⊕ β) ∈ s.disjSum t := by
          simpa [h]
        -- This implies `b ∈ t`
        have hb : b ∈ t := by
          simpa [Finset.disjSum] using hx_mem
        -- Show `s` is empty: any `a ∈ s` would give an impossible `Sum.inl a ∈ {Sum.inr b}`
        have hs_empty : s = (∅ : Finset α) := by
          apply Finset.eq_empty_iff_forall_notMem.mpr
          intro a ha
          have ha_in_disj :
              (Sum.inl a : α ⊕ β) ∈ s.disjSum t := by
            simpa [Finset.disjSum, ha]
          have ha_in_singleton :
              (Sum.inl a : α ⊕ β) ∈ ({Sum.inr b} : Finset (α ⊕ β)) := by
            simpa [h] using ha_in_disj
          -- But `{Sum.inr b}` cannot contain `Sum.inl a`
          simpa using ha_in_singleton
        -- Show every element of `t` is equal to `b`
        have hsubset : ∀ b' ∈ t, b' = b := by
          intro b' hb'
          have hb'_in_disj :
              (Sum.inr b' : α ⊕ β) ∈ s.disjSum t := by
            simpa [Finset.disjSum, hb']
          have hb'_in_singleton :
              (Sum.inr b' : α ⊕ β) ∈ ({Sum.inr b} : Finset (α ⊕ β)) := by
            simpa [h] using hb'_in_disj
          have h_eq : (Sum.inr b' : α ⊕ β) = Sum.inr b := by
            simpa using hb'_in_singleton
          -- Extract equality on `β` from equality of `Sum.inr`s
          have : b' = b := by
            simpa using h_eq
          exact this
        -- Hence `t = {b}`
        have ht_singleton : t = ({b} : Finset β) := by
          ext b'
          constructor
          · intro hb'
            have := hsubset b' hb'
            subst this
            simp
          · intro hb'
            have : b' = b := by
              simpa using hb'
            subst this
            exact hb
        -- Package into the right disjunct on the RHS
        right
        refine ⟨b, rfl, hs_empty, ht_singleton⟩
      · -- ← direction
        intro hdisj
        cases hdisj with
        | inl hleft =>
            rcases hleft with ⟨a, hx, hs, ht⟩
            -- Impossible: `x` is `inr b` in this branch, but RHS says `x = inl a`
            cases hx
        | inr hright =>
            rcases hright with ⟨b', hx, hs, ht⟩
            -- Here `x = inr b` from the case split; `hx : inr b = inr b'` ⇒ `b' = b`
            cases hx
            subst hs
            subst ht
            -- goal: (∅ : Finset α).disjSum ({b} : Finset β) = {Sum.inr b}
            ext y
            by_cases hyb : y = Sum.inr b
            · subst hyb
              simp [Finset.disjSum]
            · have : y ≠ Sum.inr b := hyb
              simp [Finset.disjSum, this]