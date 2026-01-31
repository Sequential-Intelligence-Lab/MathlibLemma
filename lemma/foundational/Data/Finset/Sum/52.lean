import Mathlib

lemma toRight_eq_toRight_iff {α β} {u v : Finset (α ⊕ β)} :
    u.toRight = v.toRight ↔ ∀ b, Sum.inr b ∈ u ↔ Sum.inr b ∈ v := by
  constructor
  · intro h b
    -- use membership characterization of toRight on both sides
    have hu : b ∈ u.toRight ↔ Sum.inr b ∈ u := Finset.mem_toRight
    have hv : b ∈ v.toRight ↔ Sum.inr b ∈ v := Finset.mem_toRight
    -- rewrite using the equality h
    have h' : b ∈ u.toRight ↔ b ∈ v.toRight := by simpa [h]
    -- chain the equivalences
    calc
      Sum.inr b ∈ u
          ↔ b ∈ u.toRight := hu.symm
      _   ↔ b ∈ v.toRight := h'
      _   ↔ Sum.inr b ∈ v := hv
  · intro h
    -- extensionality on β
    ext b
    have hu : b ∈ u.toRight ↔ Sum.inr b ∈ u := Finset.mem_toRight
    have hv : b ∈ v.toRight ↔ Sum.inr b ∈ v := Finset.mem_toRight
    calc
      b ∈ u.toRight
          ↔ Sum.inr b ∈ u := hu
      _   ↔ Sum.inr b ∈ v := h b
      _   ↔ b ∈ v.toRight := hv.symm