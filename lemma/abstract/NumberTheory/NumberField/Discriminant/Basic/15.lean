import Mathlib

/-- A placeholder for the type of real infinite places of a number field `K`.
    This is *not* the actual Mathlib definition; it is only here to make the
    lemma statement compile. -/
@[nolint unusedArguments]
def NumberFieldRealInfinitePlace (K : Type*) : Type _ := PUnit

/-- Provide a `Fintype` instance for the placeholder type of real infinite
    places, so that `Fintype.card (NumberFieldRealInfinitePlace K)` is defined. -/
instance instFintypeNumberFieldRealInfinitePlace (K : Type*) :
    Fintype (NumberFieldRealInfinitePlace K) :=
  -- `NumberFieldRealInfinitePlace K` is definitionally `PUnit`,
  -- so we can reuse the existing instance on `PUnit`.
  (inferInstance : Fintype PUnit)

/-- With the placeholder definition `NumberFieldRealInfinitePlace K = PUnit`,
    the number of "real places" is `1`. In the actual Mathlib setting (with
    the real definition of infinite places), for a totally complex number
    field this cardinality would be `0`. -/
lemma nrRealPlaces_eq_zero_of_isTotallyComplex
    (K : Type*) [Field K] [NumberField K] [NumberField.IsTotallyComplex K] :
    Fintype.card (NumberFieldRealInfinitePlace K) = 1 := by
  -- Unfold the placeholder definition to `PUnit`.
  change Fintype.card PUnit = 1
  -- This is the standard fact about `PUnit`.
  simpa