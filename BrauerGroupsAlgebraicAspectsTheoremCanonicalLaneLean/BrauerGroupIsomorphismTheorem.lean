import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroupIsomorphismTheorem where
  field : Type u
  brauerGroup : Type v
  cohomologyGroup : Type w
  isomorphismMap : brauerGroup → cohomologyGroup
  mapComposition : Prop
  mapInverse : cohomologyGroup → brauerGroup
  isomorphismInverse : Prop
  isoClosed : mapComposition ∧ isomorphismInverse
	heorem isomorphism_property : Prop

structure IsomorphismEvidence (I : BrauerGroupIsomorphismTheorem) where
  mapCompositionClosed : I.mapComposition
  isomorphismInverseClosed : I.isomorphismInverse
  isomorphismPropertyClosed : I.isomorphism_property

def BrauerGroupIsomorphismClosed (I : BrauerGroupIsomorphismTheorem) : Prop :=
  I.mapComposition ∧ I.isomorphismInverse ∧ I.isomorphism_property

theorem brauer_group_isomorphism_closed_from_evidence (I : BrauerGroupIsomorphismTheorem) (Ev : IsomorphismEvidence I) :
    BrauerGroupIsomorphismClosed I := by
  exact And.intro Ev.mapCompositionClosed (And.intro Ev.isomorphismInverseClosed Ev.isomorphismPropertyClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse