import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

/-
The statement of `MulAction.stabilizer_mono` as given is in fact
false in general, so it cannot be proved in Lean (or in mathematics)
under only the assumptions `[Group G] [MulAction G α]`.

Reason: for any group action, orbits form a partition of the set `α`.
So if `MulAction.orbit G a ⊆ MulAction.orbit G b`, then since
`a ∈ MulAction.orbit G a`, we get `a ∈ MulAction.orbit G b`, and thus
the two orbits are equal as sets:
`MulAction.orbit G a = MulAction.orbit G b`.

When two points `a` and `b` lie in the same orbit, their stabilizers
`MulAction.stabilizer G a` and `MulAction.stabilizer G b` are
*conjugate* subgroups of `G`, not necessarily comparable by inclusion.
Concretely, if `a = k • b` for some `k : G`, then
`MulAction.stabilizer G a = k * MulAction.stabilizer G b * k⁻¹`.

In a non-abelian group one can easily find examples where two
conjugate subgroups are not contained one in the other; they have the
same cardinality and are distinct. For instance, take `G` to be the
symmetric group `S₃` acting on itself by conjugation. For two
conjugate elements `a, b : G` with different centralizers as concrete
subsets of `G`, the stabilizers of `a` and `b` (their centralizers)
are conjugate but not included one in another. This contradicts the
desired conclusion
`MulAction.stabilizer G b ≤ MulAction.stabilizer G a`.

Therefore the lemma as stated cannot be proved without additional
hypotheses (such as commutativity of `G`, or a specific kind of
action). Any attempt to fill in `sorry` for this lemma will fail
because the statement itself is not valid in general.
-/
lemma MulAction.stabilizer_mono
    [Group G] [MulAction G α] {a b : α}
    (h : MulAction.orbit G a ⊆ MulAction.orbit G b) :
    MulAction.stabilizer G b ≤ MulAction.stabilizer G a := by
  -- This lemma is not true in general, so we cannot provide a proof.
  -- See the explanatory comment above for details and a conceptual
  -- counterexample. We leave this as `sorry` to indicate that the
  -- statement is not derivable under the given assumptions.
  sorry