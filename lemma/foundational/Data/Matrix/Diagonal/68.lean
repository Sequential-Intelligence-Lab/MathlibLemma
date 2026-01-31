import Mathlib

open Matrix

variable {α : Type _}

/-- A simple diagonal extraction function. -/
def myDiag {n : Type _} (M : Matrix n n α) : (n → α) :=
  fun i => M i i

/-- Interpret a natural number `k` as a scalar matrix with `k` on the diagonal. -/
instance instOfNatMatrix
    {n : Type _} [DecidableEq n] [Zero α] (k : ℕ) [OfNat α k] :
    OfNat (Matrix n n α) k
where
  ofNat :=
    fun i j =>
      if h : i = j then
        OfNat.ofNat k
      else
        0

lemma myDiag_ofNat
    {n : Type _} (k : ℕ)
    [DecidableEq n] [Zero α] [AddMonoidWithOne α] [OfNat α k]
    [Nat.AtLeastTwo k] :
    myDiag (OfNat.ofNat k : Matrix n n α) =
      fun _ : n => (OfNat.ofNat k : α) := by
  -- extensionality for functions `n → α`
  funext i
  -- unfold and simplify
  simp [myDiag, instOfNatMatrix]