import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-- For elements of an algebra over a field, define a Newton map associated to the
characteristic polynomial of a matrix over the base field. -/
lemma Matrix.newtonMap_charpoly
    {K : Type*} [Field K]
    {S : Type*} [CommRing S] [Algebra K S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n K) (x : S) :
    (Matrix.charpoly A).newtonMap x =
      x -
        (Ring.inverse
          ((Matrix.charpoly A).derivative.eval₂
            (algebraMap K S) x))
        * (Matrix.charpoly A).eval₂ (algebraMap K S) x := by
  have h1 : ∀ (p : Polynomial K), Polynomial.aeval x p = Polynomial.eval₂ (algebraMap K S) x p := by
    intro p
    simp [Polynomial.aeval_def]
  simp only [Polynomial.newtonMap]
  have h2 : Polynomial.aeval x (Matrix.charpoly A) = Polynomial.eval₂ (algebraMap K S) x (Matrix.charpoly A) := by
    apply h1
  have h3 : Polynomial.aeval x (Polynomial.derivative (Matrix.charpoly A)) = Polynomial.eval₂ (algebraMap K S) x (Polynomial.derivative (Matrix.charpoly A)) := by
    apply h1
  rw [h2, h3]
  all_goals
    ring_nf