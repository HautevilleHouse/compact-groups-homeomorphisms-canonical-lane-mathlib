import CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure PeterWeylPackage (G : CompactGroupSpace) where
  irreducibleRepresentations : List (G → Matrix (Fin n) (Fin n) ℝ)
  orthogonalDecomposition : Prop
  density : Prop

structure PeterWeylEvidence {G : CompactGroupSpace}
    (P : PeterWeylPackage G) where
  orthogonalDecompositionProof : P.orthogonalDecomposition
  densityProof : P.density

def PeterWeylClosed {G : CompactGroupSpace}
    (P : PeterWeylPackage G) : Prop :=
  P.orthogonalDecomposition ∧ P.density

theorem peter_weyl_closed_from_evidence
    {G : CompactGroupSpace} (P : PeterWeylPackage G)
    (E : PeterWeylEvidence P) : PeterWeylClosed P := by
  exact And.intro E.orthogonalDecompositionProof E.densityProof

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse