import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.fixedPoints_subset_of_subsingleton [Monoid M] [MulAction M α] [Subsingleton α] :
    MulAction.fixedPoints M α ⊆ Set.univ := by
  -- Consider the two cases for α: empty or containing exactly one element.
  cases' isEmpty_or_nonempty α with h h
  -- Case 1: α is empty.
  -- If α is empty, the set of fixed points is also empty, which is a subset of α.
  simp_all [MulAction.fixedPoints]
  -- Case 2: α is nonempty and has exactly one element.
  -- If α is nonempty, it contains exactly one element, say 'a'.
  -- The action of M on α maps 'a' to itself for all m in M, making 'a' a fixed point.
  -- The set of fixed points is {a}, which is equal to α, hence a subset of α.
  simp_all [MulAction.fixedPoints]
  <;> aesop