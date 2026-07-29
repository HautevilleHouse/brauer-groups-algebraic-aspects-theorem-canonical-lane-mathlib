import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure CentralSimpleAlgebraFactorization where
  algebra : Type u
  center : Type u
  centerField : Prop
  dimensionFinite : Prop
  splitOverExtension : Prop
  matrixAlgebraDecomposition : Prop
  tensorProductStability : Prop

structure CSAFactorizationEvidence (F : CentralSimpleAlgebraFactorization) where
  centerFieldClosed : F.centerField
  dimensionFiniteClosed : F.dimensionFinite
  splitOverExtensionClosed : F.splitOverExtension
  matrixAlgebraDecompositionClosed : F.matrixAlgebraDecomposition
  tensorProductStabilityClosed : F.tensorProductStability

def CSAFactorizationClosed (F : CentralSimpleAlgebraFactorization) : Prop :=
  F.centerField ∧ F.dimensionFinite ∧ F.splitOverExtension ∧ F.matrixAlgebraDecomposition ∧ F.tensorProductStability

theorem csa_factorization_closed_from_evidence (F : CentralSimpleAlgebraFactorization) (Ev : CSAFactorizationEvidence F) :
    CSAFactorizationClosed F := by
  exact And.intro Ev.centerFieldClosed
    (And.intro Ev.dimensionFiniteClosed
      (And.intro Ev.splitOverExtensionClosed
        (And.intro Ev.matrixAlgebraDecompositionClosed Ev.tensorProductStabilityClosed)))

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse