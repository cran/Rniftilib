\name{nifti}
\alias{nifti}
\alias{[.nifti}
\alias{dim.nifti}
\alias{$.nifti}
\alias{print.nifti}
\alias{plot.nifti}
\alias{[<-.nifti}
\alias{$<-.nifti}
\alias{nifti.image.getdim.save}
\title{NIfTI object}
\description{
  A NIfTI object contains the image description and data of an image
  volume.
  The voxels can be accessed by the bracket [dim1,dim2,dim3,...,dim7] operator.
}
\usage{
  \method{[}{nifti}(x,
       dim1=1:nifti.image.getdim.save(x,1),
       dim2=1:nifti.image.getdim.save(x,2),
       dim3=1:nifti.image.getdim.save(x,3),
       dim4=1:nifti.image.getdim.save(x,4),
       dim5=1:nifti.image.getdim.save(x,5),
       dim6=1:nifti.image.getdim.save(x,6),
       dim7=1:nifti.image.getdim.save(x,7))      
  \method{$}{nifti}(x, sym)
  \method{dim}{nifti}(x)
  \method{print}{nifti}(x,...)
  \method{plot}{nifti}(x, dim1=1:nifti.image.getdim.save(x,1), dim2=1:nifti.image.getdim.save(x,2),dim3=1, dim4=1,...)
}
\arguments{
  \item{x}{NIfTI image object (class nifti)}
  \item{sym}{  \tabular{rc}{
  \code{qto.xyz}\tab voxel to mm transformation (R style indexing!)\cr 
  \code{qto.ijk}\tab mm to voxel transformation (R style indexing!)\cr
  \code{sto.xyz}\tab voxel to mm transformation (R style indexing!)\cr
  \code{sto.ijk}\tab mm to voxel transformation (R style indexing!)\cr
  \code{qto_xyz}\tab voxel to mm transformation (C style indexing!)\cr 
  \code{qto_ijk}\tab mm to voxel transformation (C style indexing!)\cr
  \code{sto_xyz}\tab voxel to mm transformation (C style indexing!)\cr
  \code{sto_ijk}\tab mm to voxel transformation (C style indexing!)\cr
  \code{toffset}\tab \cr
  \code{descrip}\tab description (up to 80 characters)\cr
  \code{fname}\tab header filename (store image information)\cr
  \code{iname}\tab image filename (store image data)\cr
  \code{slice.duration}\tab time for 1 slice\cr
  \code{qform.code}\tab \code{NIFTI.XFORM.UNKNOWN} (0) \cr
                   \tab \code{NIFTI.XFORM.SCANNER.ANAT} (1) \cr
                   \tab \code{NIFTI.XFORM.ALIGNED.ANAT} (2) \cr
                   \tab \code{NIFTI.XFORM.TALAIRACH} (3) \cr
                   \tab \code{NIFTI.XFORM.MNI.152} (4)\cr
                   \tab \code{qform code: >No<} for unknown tags \cr
  \code{sform.code}\tab \code{NIFTI.XFORM.UNKNOWN} (0) \cr
                   \tab \code{NIFTI.XFORM.SCANNER.ANAT} (1)\cr
                   \tab \code{NIFTI.XFORM.ALIGNED.ANAT} (2)\cr
                   \tab \code{NIFTI.XFORM.TALAIRACH} (3) \cr
                   \tab \code{NIFTI.XFORM.MNI.152} (4) \cr
                   \tab \code{sform code: >No<} for unknown tags \cr
  \code{quatern.b}\tab \cr
  \code{quatern.c}\tab \cr
  \code{quatern.d}\tab \cr
  \code{qoffset.x}\tab \cr
  \code{qoffset.y}\tab \cr
  \code{qoffset.z}\tab \cr
  \code{qfac}\tab \cr
  \code{dim}\tab image volume size in voxel \cr
  \code{pixdim}\tab grid spacings. \cr
  \code{datatype}\tab data type \cr
  \code{nifti.type}\tab \code{NIFTI.FTYPE.ANALYZE} (0) \cr
                   \tab \code{NIFTI.FTYPE.NIFTI1.1}(1) \cr
                   \tab \code{NIFTI.FTYPE.NIFTI1.2} (2) \cr
                   \tab \code{NIFTI.FTYPE.ASCII} (3) \cr
  \code{sizeof_hdr}\tab MUST be 348\cr
  \code{scl.slope}\tab nifti1: Data scaling: slope.  analyze 7.5: float funused1 \cr
  \code{scl.inter}\tab nifti1: Data scaling: offset. analyze 7.5: float funused2 \cr
  }}
  \item{dim1}{vector of voxel indices (x)}
  \item{dim2}{vector of voxel indices (y)}
  \item{dim3}{vector of voxel indices (z)}
  \item{dim4}{vector of voxel indices (t)}
  \item{dim5}{vector of voxel indices}
  \item{dim6}{vector of voxel indices}
  \item{dim7}{vector of voxel indices}
  \item{...}{additional arguments for plotting (e.g. \code{\link{image}}) and printing}
}
\references{
  \url{http://nifti.nimh.nih.gov}
  \url{http://niftilib.sourceforge.net}
}
\author{
  Oliver Granert <o.granert <at> neurologie.uni-kiel.de>
}
\seealso{ 
  \code{\link{nifti.image.read}},
  \code{\link{nifti.image.write}},
  \code{\link{nifti.image.new}}
}
\keyword{package}
\keyword{data}
\keyword{manip}