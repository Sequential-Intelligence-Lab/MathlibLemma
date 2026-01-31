import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_finsetRange_right {α} [DecidableEq α]
    (s : Finset α) (n : ℕ) :
    s.disjSum (Finset.range n)
      = (s.image Sum.inl)
        ∪ ((Finset.range n).image Sum.inr) := by
  ext
  -- We will prove that each side is a subset of the other.
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_image,
    Finset.mem_range, Sum.inl.injEq, Sum.inr.injEq]
  -- For the forward direction, we consider elements of the form Sum.inl a or Sum.inr b.
  <;> rintro (a | b) <;> simp_all
  -- For the backward direction, we consider elements in the union of the images.
  <;> rintro (h | h) <;> simp_all
  <;> aesop