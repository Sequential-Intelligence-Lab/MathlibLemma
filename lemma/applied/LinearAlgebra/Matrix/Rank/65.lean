import Mathlib

namespace Matrix

/-- A placeholder notion of column equivalence between matrices.
    This is only defined so that the lemma `rank_eq_rank_of_colEquiv`
    below typechecks; it has no properties and is not used. -/
structure colEquiv {R m n} (A B : Matrix m n R) : Prop :=
  (dummy : True)

end Matrix

lemma Matrix.rank_eq_rank_of_colEquiv {R m n} [CommRing R]
    [Fintype m] [Fintype n]
    (A B : Matrix m n R)
    (h : Matrix.colEquiv A B) :
    A.rank = B.rank := by
  -- This lemma is not provable with the current definition of `Matrix.colEquiv`.
  -- `Matrix.colEquiv A B` only contains `True` as data and therefore carries
  -- no information relating `A` and `B`. From such a hypothesis, one cannot
  -- derive `A.rank = B.rank`, as that would imply all matrices of the same
  -- shape have equal rank, which is false in general.
  --
  -- Hence there is no sound, complete proof term that can be written here
  -- without changing the statement or the definition of `colEquiv`, or
  -- introducing `sorry`/unsound axioms.
  --
  -- For the lemma to be provable, `colEquiv` would need to encode genuine
  -- column equivalence (e.g. via an invertible matrix relating the columns),
  -- and the proof would then use invariance of rank under such operations.
  admit