import Mathlib

def Fin.equiv_finSucc (n : ℕ) :
    Fin (n + 1) ≃ Option (Fin n) := by
  classical
  -- forward map: send the last element to `none`, others to `some` with same value
  let f : Fin (n + 1) → Option (Fin n) :=
    fun i =>
      if h : (i : ℕ) = n then
        none
      else
        some
          ⟨(i : ℕ),
            by
              have hle : (i : ℕ) ≤ n := Nat.le_of_lt_succ i.is_lt
              exact lt_of_le_of_ne hle h⟩
  -- inverse map: `none` ↦ last element, `some j` ↦ j (viewed in `Fin (n+1)`)
  let g : Option (Fin n) → Fin (n + 1) :=
    fun o =>
      match o with
      | none   => ⟨n, Nat.lt_succ_self n⟩
      | some j => ⟨(j : ℕ), Nat.lt_succ_of_lt j.is_lt⟩
  refine
    { toFun := f
      , invFun := g
      , left_inv := ?_
      , right_inv := ?_ }
  · -- left inverse: g (f i) = i
    intro i
    -- work with explicit definitions of f and g
    unfold f g
    by_cases h : (i : ℕ) = n
    · -- i is the last element; it maps to none then back to last element
      ext
      simp [h]
    · -- i is not the last; it maps to some i' and back to i
      have hlt : (i : ℕ) < n :=
        lt_of_le_of_ne (Nat.le_of_lt_succ i.is_lt) h
      ext
      simp [h, hlt]
  · -- right inverse: f (g o) = o
    intro o
    -- case-split on the option
    cases o with
    | none =>
        unfold f g
        simp
    | some j =>
        unfold f g
        have hne : (j : ℕ) ≠ n := ne_of_lt j.is_lt
        have hlt : (j : ℕ) < n := j.is_lt
        ext
        simp [hne, hlt]