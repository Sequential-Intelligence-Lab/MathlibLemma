import Mathlib

lemma toRight_eq_empty_iff {α β} {u : Finset (α ⊕ β)} :
    u.toRight = (∅ : Finset β) ↔ ∀ b, Sum.inr b ∉ u := by
  constructor
  · intro h b
    -- Suppose, for contradiction, that Sum.inr b ∈ u
    intro hb
    -- Turn this into membership of b in u.toRight
    have hb' : b ∈ u.toRight := by
      simpa [Finset.mem_toRight] using hb
    -- Rewrite using h : u.toRight = ∅, so membership is impossible
    have : b ∈ (∅ : Finset β) := by simpa [h] using hb'
    -- But membership in the empty finset is false
    simpa using this
  · intro h
    -- Show finset equality by extensionality
    ext b
    constructor
    · intro hb
      -- From b ∈ u.toRight, get Sum.inr b ∈ u
      have hb' : Sum.inr b ∈ u := by
        simpa [Finset.mem_toRight] using hb
      -- Contradiction with the hypothesis h
      exact (h b hb').elim
    · intro hb
      -- hb : b ∈ (∅ : Finset β) is impossible
      simpa using hb