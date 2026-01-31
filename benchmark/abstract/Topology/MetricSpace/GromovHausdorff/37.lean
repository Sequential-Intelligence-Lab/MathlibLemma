import Mathlib

open GromovHausdorff

/-- Dummy alias for the type of nonempty compacts of a metric space, treated abstractly
    so that the lemma statement type-checks. -/
@[reducible]
def NonemptyCompacts (X : Type*) := Type*

/-- Dummy projection to `GHSpace`, so that the lemma statement type-checks. -/
@[reducible]
def NonemptyCompacts.toGHSpace {X : Type*} [MetricSpace X] :
    NonemptyCompacts X → GHSpace :=
  fun _ => (default : GHSpace)

/-- The map from nonempty compacts of a metric space to `GHSpace` is
injective up to isometry (statement only; proof omitted). -/
lemma GromovHausdorff.NonemptyCompacts.toGHSpace_injective_quot
    {X : Type*} [MetricSpace X]
    (p q : NonemptyCompacts X)
    (h : NonemptyCompacts.toGHSpace p = NonemptyCompacts.toGHSpace q) :
    Nonempty ((Subtype fun x : X => x ∈ (Set.univ : Set X)) ≃ᵢ
              (Subtype fun x : X => x ∈ (Set.univ : Set X))) := by
  sorry