import Mathlib

lemma disjSum_eq_right {α β} (s : Finset α) (t : Finset β) :
    s.disjSum t = t.map .inr ↔ s = ∅ := by
  classical
  constructor
  · intro h
    -- Show s = ∅ by showing no element belongs to s
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro a ha
    -- inl a is in the disjoint sum
    have hinl : Sum.inl a ∈ s.disjSum t := by
      simp [Finset.disjSum, ha]
    -- transport membership via h
    have : Sum.inl a ∈ t.map .inr := by
      simpa [h] using hinl
    -- use mem_map to get an equality Sum.inr b = Sum.inl a
    rcases Finset.mem_map.mp this with ⟨b, hb, hbeq⟩
    -- impossible: inl and inr are disjoint
    exact Sum.inl_ne_inr (a := a) (b := b) hbeq.symm
  · intro hs
    subst hs
    -- Now we need to show ∅.disjSum t = t.map .inr
    ext x
    cases x with
    | inl a =>
        simp [Finset.disjSum]
    | inr b =>
        simp [Finset.disjSum]