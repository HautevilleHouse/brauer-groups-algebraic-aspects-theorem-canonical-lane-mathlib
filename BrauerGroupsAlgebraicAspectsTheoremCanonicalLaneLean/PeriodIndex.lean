import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.CentralSimpleAlgebra
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.SplittingField

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure PeriodIndex (F : Type u) [Field F] (A : CentralSimpleAlgebra F) where
  period : ℕ
  index : ℕ
  periodDividesIndex : period ∣ index
  indexDividesPeriodPower : ∃ n : ℕ, index ∣ period ^ n

structure PeriodIndexEvidence (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (P : PeriodIndex F A) where
  periodDividesIndexClosed : P.periodDividesIndex
  indexDividesPeriodPowerClosed : P.indexDividesPeriodPower

def PeriodIndexClosed (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (P : PeriodIndex F A) : Prop :=
  P.periodDividesIndex ∧ P.indexDividesPeriodPower

theorem period_index_closed_from_evidence (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (P : PeriodIndex F A) (E : PeriodIndexEvidence F A P) : PeriodIndexClosed F A P :=
  by
    exact And.intro E.periodDividesIndexClosed E.indexDividesPeriodPowerClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse