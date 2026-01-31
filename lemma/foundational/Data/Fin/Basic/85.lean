import Mathlib

lemma Fin.add_left_cancel_iff {n : ℕ} {i j k : Fin n} :
    i + j = i + k ↔ j = k := by
  simpa using add_left_cancel_iff (a := i) (b := j) (c := k)