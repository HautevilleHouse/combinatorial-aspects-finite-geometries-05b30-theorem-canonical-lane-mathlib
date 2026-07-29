import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure CombinatorialDesignEnumerationPackage where
  designFamily : Type u
  pointSet : Type v
  blockSet : Type w
  incidence : pointSet → blockSet → Prop
  enumerationKey : String
  classificationResult : Prop
  admissibilityCriterion : Prop
  closureUnderAutomorphism : Prop

structure CombinatorialDesignEnumerationEvidence (C : CombinatorialDesignEnumerationPackage) where
  classificationResultClosed : C.classificationResult
  admissibilityCriterionClosed : C.admissibilityCriterion
  closureUnderAutomorphismClosed : C.closureUnderAutomorphism

def CombinatorialDesignEnumerationClosed (C : CombinatorialDesignEnumerationPackage) : Prop :=
  C.classificationResult ∧ C.admissibilityCriterion ∧ C.closureUnderAutomorphism

theorem combinatorial_design_enumeration_closed_from_evidence
    (C : CombinatorialDesignEnumerationPackage) (E : CombinatorialDesignEnumerationEvidence C) :
    CombinatorialDesignEnumerationClosed C := by
  exact And.intro E.classificationResultClosed
    (And.intro E.admissibilityCriterionClosed E.closureUnderAutomorphismClosed)

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse