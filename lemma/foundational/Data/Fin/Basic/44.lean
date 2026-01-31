import Mathlib

lemma Fin.subsingleton_iff_zero_or_one {n : ℕ} :
    (Subsingleton (Fin n)) ↔ n = 0 ∨ n = 1 := by
  classical
  constructor
  · intro h
    cases n with
    | zero =>
        -- n = 0
        exact Or.inl rfl
    | succ k =>
        -- n = k.succ, show k.succ = 1, i.e. k = 0
        haveI : Subsingleton (Fin (Nat.succ k)) := h
        have hk : k = 0 := by
          by_contra hk
          have hkpos : 0 < k := Nat.pos_of_ne_zero hk
          have h1lt : 1 < Nat.succ k := Nat.succ_lt_succ hkpos
          let a : Fin (Nat.succ k) := ⟨0, Nat.succ_pos _⟩
          let b : Fin (Nat.succ k) := ⟨1, h1lt⟩
          have hEq : a = b := Subsingleton.elim _ _
          have hval :
              (a : Fin (Nat.succ k)).val = (b : Fin (Nat.succ k)).val :=
            congrArg Fin.val hEq
          have : (0 : Nat) = 1 := by
            simpa [a, b] using hval
          have : False := by
            -- 0 = 1 is impossible
            simpa using this
          exact this
        have : Nat.succ k = 1 := by simpa [hk]
        exact Or.inr this
  · intro h
    cases h with
    | inl h0 =>
        subst h0
        -- goal: Subsingleton (Fin 0)
        infer_instance
    | inr h1 =>
        subst h1
        -- goal: Subsingleton (Fin 1)
        infer_instance