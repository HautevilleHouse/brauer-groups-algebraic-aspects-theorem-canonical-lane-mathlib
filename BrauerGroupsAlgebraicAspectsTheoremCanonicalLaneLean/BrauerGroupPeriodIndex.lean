import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Brauer

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure PeriodIndexPackage (k : Type u) [Field k] where
  algebra : CentralSimpleAlgebra k
  period : ℕ
  index : ℕ
  periodDivIndex : period ∣ index
  indexDivPeriodSquare : index ∣ period ^ 2

structure PeriodIndexEvidence (k : Type u) [Field k] (P : PeriodIndexPackage k) where
  periodClosed : P.period = 0 ∨ P.period ≠ 0
  indexClosed : P.index = 0 ∨ P.index ≠ 0
  periodDivIndexClosed : P.periodDivIndex
  indexDivPeriodSquareClosed : P.indexDivPeriodSquare

def PeriodIndexClosed (k : Type u) [Field k] (P : PeriodIndexPackage k) : Prop :=
  P.periodDivIndex ∧ P.indexDivPeriodSquare

theorem periodIndex_closed_from_evidence (k : Type u) [Field k] (P : PeriodIndexPackage k) (E : PeriodIndexEvidence k P) :
  PeriodIndexClosed k P :=
by
  exact And.intro E.periodDivIndexClosed E.indexDivPeriodSquareClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse