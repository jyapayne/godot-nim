# Copyright 2017 Xored Software, Inc.

import internal.godotinternaltypes, core.godotcoretypes

type GDNativeAPI* = object
  next: pointer
  version: cstring

  # Color API
  colorNewRGBA*: proc (dest: var Color, r, g, b, a: float32)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorNewRGB*: proc (dest: var Color, r, g, b: float32)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetR*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorSetR*: proc (self: var Color, r: float32)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetG*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorSetG*: proc (self: var Color, g: float32)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetB*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorSetB*: proc (self: var Color, b: float32)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetA*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorSetA*: proc (self: var Color, a: float32)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetH*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetS*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGetV*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorAsString*: proc (self: Color): GodotString
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorToRGBA32*: proc (self: Color): cint
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorAsARGB32*: proc (self: Color): cint
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorGray*: proc (self: Color): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorInverted*: proc (self: Color): Color
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorContrasted*: proc (self: Color): Color
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorLinearInterpolate*: proc (self, other: Color, t: float32): Color
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  colorBlend*: proc (self, other: Color): Color
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorToHtml*: proc (self: Color, withAlpha: bool): GodotString
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorOperatorEqual*: proc (self, other: Color): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  colorOperatorLess*: proc (self, other: Color): bool
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Vector2 API
  vector2New*: proc (dest: var Vector2, x, y: float32)
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2AsString*: proc (self: Vector2): GodotString
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Normalized*: proc (self: Vector2): Vector2
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Length*: proc (self: Vector2): float32
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Angle*: proc (self: Vector2): float32
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2LengthSquared*: proc (self: Vector2): float32
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2IsNormalized*: proc (self: Vector2): bool
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2DistanceTo*: proc (self, to: Vector2): float32
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2DistanceSquaredTo*: proc (self, to: Vector2): float32
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  vector2AngleTo*: proc (self, to: Vector2): float32
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2AngleToPoint*: proc (self, to: Vector2): float32
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2LinearInterpolate*: proc (self, b: Vector2, t: float32): Vector2
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  vector2CubicInterpolate*: proc (self, b, preA, postB: Vector2,
                                  t: float32): Vector2
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  vector2Rotated*: proc (self: Vector2, phi: float32): Vector2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Tangent*: proc (self: Vector2): Vector2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Floor*: proc (self: Vector2): Vector2
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Snapped*: proc (self, by: Vector2): Vector2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Aspect*: proc (self: Vector2): float32
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Dot*: proc (self, other: Vector2): float32
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Slide*: proc (self, n: Vector2): Vector2
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Bounce*: proc (self, n: Vector2): Vector2
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Reflect*: proc (self, n: Vector2): Vector2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Abs*: proc (self: Vector2): Vector2
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2Clamped*: proc (self: Vector2, length: float32): Vector2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2OperatorAdd*: proc (self, other: Vector2): Vector2
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2OperatorSubtract*: proc (self, other: Vector2): Vector2
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  vector2OperatorMultiplyVector*: proc (self, other: Vector2): Vector2
                                       {.noconv, raises: [], gcsafe, tags: [],
                                         locks: 0.}
  vector2OperatorMultiplyScalar*: proc (self: Vector2, scalar: float32): Vector2
                                       {.noconv, raises: [], gcsafe, tags: [],
                                         locks: 0.}
  vector2OperatorDivideVector*: proc (self, other: Vector2): Vector2
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  vector2OperatorDivideScalar*: proc (self: Vector2, scalar: float32): Vector2
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  vector2OperatorEqual*: proc (self, other: Vector2): bool
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2OperatorLess*: proc (self, other: Vector2): bool
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2OperatorNeg*: proc (self: Vector2): Vector2
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  vector2SetX: pointer
  vector2SetY: pointer
  vector2GetX: pointer
  vector2GetY: pointer

  # Quat API
  quatNew*: proc (dest: var Quat, x, y, z, w: float32)
                 {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatNewWithAxisAngle*: proc (dest: Quat, axis: Vector3,
                               angle: float32)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatGetX*: proc (self: Quat): float32
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSetX*: proc (self: var Quat, val: float32)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatGetY*: proc (self: Quat): float32
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSetY*: proc (self: var Quat, val: float32)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatGetZ*: proc (self: Quat): float32
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSetZ*: proc (self: var Quat, val: float32)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatGetW*: proc (self: Quat): float32
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSetW*: proc (self: var Quat, val: float32)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatAsString*: proc (self: Quat): GodotString
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatLength*: proc (self: Quat): float32
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatLengthSquared*: proc (self: Quat): float32
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatNormalized*: proc (self: Quat): Quat
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatIsNormalized*: proc (self: Quat): bool
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatInverse*: proc (self: Quat): Quat
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatDot*: proc (self, other: Quat): float32
                 {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatXform*: proc (self: Quat, v: Vector3): Vector3
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSlerp*: proc (self, other: Quat, t: float32): Quat
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatSlerpni*: proc (self, other: Quat, t: float32): Quat
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatCubicSlerp*: proc (self, other, preA, postB: Quat, t: float32): Quat
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorMultiply*: proc (self: Quat, b: float32): Quat
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorAdd*: proc (self, other: Quat): Quat
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorSubtract*: proc (self, other: Quat): Quat
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorDivide*: proc (self: Quat, divider: float32): Quat
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorEqual*: proc (self, other: Quat): bool
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  quatOperatorNeg*: proc (self: Quat): Quat
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Basis API
  basisNewWithRows: pointer
  basisNewWithAxisAndAngle: pointer
  basisNewWithEuler: pointer
  basisAsString: pointer
  basisInverse: pointer
  basisTransposed: pointer
  basisOrthonormalized: pointer
  basisDeterminant: pointer
  basisRotated: pointer
  basisScaled: pointer
  basisGetScale: pointer
  basisGetEuler: pointer
  basisTdotx: pointer
  basisTdoty: pointer
  basisTdotz: pointer
  basisXform: pointer
  basisXformInv: pointer
  basisGetOrthogonalIndex: pointer
  basisNew: pointer
  basisNewWithEulerQuat: pointer
  basisGetElements: pointer
  basisGetAxis: pointer
  basisSetAxis: pointer
  basisGetRow: pointer
  basisSetRow: pointer
  basisOperatorEqual: pointer
  basisOperatorAdd: pointer
  basisOperatorSubstract: pointer
  basisOperatorMultiplyVector: pointer
  basisOperatorMultiplyScalar: pointer

  # Vector3 API
  vector3New: pointer
  vector3AsString: pointer
  vector3MinAxis: pointer
  vector3MaxAxis: pointer
  vector3Length: pointer
  vector3Length_squared: pointer
  vector3IsNormalized: pointer
  vector3Normalized: pointer
  vector3Inverse: pointer
  vector3Snapped: pointer
  vector3Rotated: pointer
  vector3LinearInterpolate: pointer
  vector3CubicInterpolate: pointer
  vector3Dot: pointer
  vector3Cross: pointer
  vector3Outer: pointer
  vector3ToDiagonalMatrix: pointer
  vector3Abs: pointer
  vector3Floor: pointer
  vector3Ceil: pointer
  vector3DistanceTo: pointer
  vector3DistanceSquaredTo: pointer
  vector3AngleTo: pointer
  vector3Slide: pointer
  vector3Bounce: pointer
  vector3Reflect: pointer
  vector3OperatorAdd: pointer
  vector3OperatorSubstract: pointer
  vector3OperatorMultiplyVector: pointer
  vector3OperatorMultiplyScalar: pointer
  vector3OperatorDivideVector: pointer
  vector3OperatorDivideScalar: pointer
  vector3OperatorEqual: pointer
  vector3OperatorLess: pointer
  vector3OperatorNeg: pointer
  vector3SetAxis: pointer
  vector3GetAxis: pointer

  # PoolByteArray API
  poolByteArrayNew*: proc (dest: var GodotPoolByteArray)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayNewCopy*: proc (dest: var GodotPoolByteArray,
                               src: GodotPoolByteArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayNewWithArray*: proc (dest: var GodotPoolByteArray,
                                    src: GodotArray)
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  poolByteArrayAppend*: proc (self: var GodotPoolByteArray,
                              val: byte)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayAppendArray*: proc (self: var GodotPoolByteArray,
                                   arr: GodotPoolByteArray)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  poolByteArrayInsert*: proc (self: var GodotPoolByteArray,
                              idx: cint, val: byte): Error
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayInvert*: proc (self: var GodotPoolByteArray)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayPushBack*: proc (self: var GodotPoolByteArray, val: byte)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolByteArrayRemove*: proc (self: var GodotPoolByteArray, idx: cint)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayResize*: proc (self: var GodotPoolByteArray, size: cint)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArraySet*: proc (self: var GodotPoolByteArray, idx: cint, data: byte)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayGet*: proc (self: GodotPoolByteArray, idx: cint): byte
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArraySize*: proc (self: GodotPoolByteArray): cint
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolByteArrayDestroy*: proc (self: GodotPoolByteArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # PoolIntArray API
  poolIntArrayNew*: proc (dest: var GodotPoolIntArray)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayNewCopy*: proc (dest: var GodotPoolIntArray,
                              src: GodotPoolIntArray)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayNewWithArray*: proc (dest: var GodotPoolIntArray, src: GodotArray)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  poolIntArrayAppend*: proc (self: var GodotPoolIntArray, val: cint)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayAppendArray*: proc (self: var GodotPoolIntArray,
                                  arr: GodotPoolIntArray)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  poolIntArrayInsert*: proc (self: var GodotPoolIntArray, idx: cint,
                             val: cint): Error
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayInvert*: proc (self: var GodotPoolIntArray)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayPushBack*: proc (self: var GodotPoolIntArray, val: cint)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayRemove*: proc (self: var GodotPoolIntArray, idx: cint)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayResize*: proc (self: var GodotPoolIntArray, size: cint)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArraySet*: proc (self: var GodotPoolIntArray, idx: cint, data: cint)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayGet*: proc (self: GodotPoolIntArray, idx: cint): cint
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArraySize*: proc (self: GodotPoolIntArray): cint
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolIntArrayDestroy*: proc (self: GodotPoolIntArray)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # PoolRealArray API
  poolRealArrayNew*: proc (dest: var GodotPoolRealArray)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayNewCopy*: proc (dest: var GodotPoolRealArray,
                               src: GodotPoolRealArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayNewWithArray*: proc (dest: var GodotPoolRealArray,
                                    src: GodotArray)
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  poolRealArrayAppend*: proc (self: var GodotPoolRealArray, val: float32)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayAppendArray*: proc (self: var GodotPoolRealArray,
                                   arr: GodotPoolRealArray)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  poolRealArrayInsert*: proc (self: var GodotPoolRealArray,
                              idx: cint, val: float32): Error
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayInvert*: proc (self: var GodotPoolRealArray)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayPushBack*: proc (self: var GodotPoolRealArray, val: float32)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolRealArrayRemove*: proc (self: var GodotPoolRealArray, idx: cint)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayResize*: proc (self: var GodotPoolRealArray, size: cint)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArraySet*: proc (self: var GodotPoolRealArray, idx: cint,
                           data: float32)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayGet*: proc (self: GodotPoolRealArray, idx: cint): float32
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArraySize*: proc (self: GodotPoolRealArray): cint
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolRealArrayDestroy*: proc (self: GodotPoolRealArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # PoolStringArray API
  poolStringArrayNew*: proc (dest: var GodotPoolStringArray)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolStringArrayNewCopy*: proc (dest: var GodotPoolStringArray,
                                 src: GodotPoolStringArray)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolStringArrayNewWithArray*: proc (dest: var GodotPoolStringArray,
                                      src: GodotArray)
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  poolStringArrayAppend*: proc (self: var GodotPoolStringArray,
                                val: GodotString)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolStringArrayAppendArray*: proc (self: var GodotPoolStringArray,
                                     arr: GodotPoolStringArray)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  poolStringArrayInsert*: proc (self: var GodotPoolStringArray,
                                idx: cint, val: GodotString): Error
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolStringArrayInvert*: proc (self: var GodotPoolStringArray)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolStringArrayPushBack*: proc (self: var GodotPoolStringArray,
                                  val: GodotString)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  poolStringArrayRemove*: proc (self: var GodotPoolStringArray, idx: cint)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolStringArrayResize*: proc (self: var GodotPoolStringArray, size: cint)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolStringArraySet*: proc (self: var GodotPoolStringArray, idx: cint,
                             data: GodotString)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolStringArrayGet*: proc (self: GodotPoolStringArray, idx: cint): GodotString
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolStringArraySize*: proc (self: GodotPoolStringArray): cint
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolStringArrayDestroy*: proc (self: GodotPoolStringArray)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}

  # PoolVector2 API
  poolVector2ArrayNew*: proc (dest: var GodotPoolVector2Array)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector2ArrayNewCopy*: proc (dest: var GodotPoolVector2Array,
                                  src: GodotPoolVector2Array)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  poolVector2ArrayNewWithArray*: proc (dest: var GodotPoolVector2Array,
                                       src: GodotArray)
                                      {.noconv, raises: [], gcsafe, tags: [],
                                        locks: 0.}
  poolVector2ArrayAppend*: proc (self: var GodotPoolVector2Array, val: Vector2)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector2ArrayAppendArray*: proc (self: var GodotPoolVector2Array,
                                      arr: GodotPoolVector2Array)
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  poolVector2ArrayInsert*: proc (self: var GodotPoolVector2Array, idx: cint,
                                 val: Vector2): Error
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector2ArrayInvert*: proc (self: var GodotPoolVector2Array)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector2ArrayPushBack*: proc (self: var GodotPoolVector2Array,
                                   val: Vector2)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  poolVector2ArrayRemove*: proc (self: var GodotPoolVector2Array, idx: cint)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector2ArrayResize*: proc (self: var GodotPoolVector2Array, size: cint)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector2ArraySet*: proc (self: var GodotPoolVector2Array, idx: cint,
                              data: Vector2)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector2ArrayGet*: proc (self: GodotPoolVector2Array, idx: cint): Vector2
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector2ArraySize*: proc (self: GodotPoolVector2Array): cint
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector2ArrayDestroy*: proc (self: GodotPoolVector2Array)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}

  # PoolVector3 API
  poolVector3ArrayNew*: proc (dest: var GodotPoolVector3Array)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector3ArrayNewCopy*: proc (dest: var GodotPoolVector3Array,
                                  src: GodotPoolVector3Array)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  poolVector3ArrayNewWithArray*: proc (dest: var GodotPoolVector3Array,
                                       src: GodotArray)
                                      {.noconv, raises: [], gcsafe, tags: [],
                                        locks: 0.}
  poolVector3ArrayAppend*: proc (self: var GodotPoolVector3Array, val: Vector3)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector3ArrayAppendArray*: proc (self: var GodotPoolVector3Array,
                                      arr: GodotPoolVector3Array)
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  poolVector3ArrayInsert*: proc (self: var GodotPoolVector3Array, idx: cint,
                                 val: Vector3): Error
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector3ArrayInvert*: proc (self: var GodotPoolVector3Array)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolVector3ArrayPushBack*: proc (self: var GodotPoolVector3Array,
                                   val: Vector3) {.noconv, raises: [], gcsafe,
                                                   tags: [], locks: 0.}
  poolVector3ArrayRemove*: proc (self: var GodotPoolVector3Array,
                                 idx: cint) {.noconv, raises: [], gcsafe,
                                              tags: [], locks: 0.}
  poolVector3ArrayResize*: proc (self: var GodotPoolVector3Array,
                                 size: cint) {.noconv, raises: [], gcsafe,
                                               tags: [], locks: 0.}
  poolVector3ArraySet*: proc (self: var GodotPoolVector3Array, idx: cint,
                              data: Vector3) {.noconv, raises: [], gcsafe,
                                               tags: [], locks: 0.}
  poolVector3ArrayGet*: proc (self: GodotPoolVector3Array, idx: cint): Vector3
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector3ArraySize*: proc (self: GodotPoolVector3Array): cint
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolVector3ArrayDestroy*: proc (self: GodotPoolVector3Array)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}

  # PoolColorArray API
  poolColorArrayNew*: proc (dest: var GodotPoolColorArray)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayNewCopy*: proc (dest: var GodotPoolColorArray,
                                src: GodotPoolColorArray)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  poolColorArrayNewWithArray*: proc (dest: var GodotPoolColorArray,
                                     src: GodotArray)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  poolColorArrayAppend*: proc (self: var GodotPoolColorArray,
                               val: Color)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayAppendArray*: proc (self: var GodotPoolColorArray,
                                    arr: GodotPoolColorArray)
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  poolColorArrayInsert*: proc (self: var GodotPoolColorArray,
                               idx: cint, val: Color): Error
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayInvert*: proc (self: var GodotPoolColorArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayPushBack*: proc (self: var GodotPoolColorArray, val: Color)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  poolColorArrayRemove*: proc (self: var GodotPoolColorArray, idx: cint)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayResize*: proc (self: var GodotPoolColorArray, size: cint)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArraySet*: proc (self: var GodotPoolColorArray, idx: cint,
                            data: Color)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayGet*: proc (self: GodotPoolColorArray, idx: cint): Color
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArraySize*: proc (self: GodotPoolColorArray): cint
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  poolColorArrayDestroy*: proc (self: GodotPoolColorArray)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}

  # Array API
  arrayNew*: proc (dest: var GodotArray)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayNewCopy*: proc (dest: var GodotArray, src: GodotArray)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayNewPoolColorArray*: proc (dest: var GodotArray, src: GodotPoolColorArray)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  arrayNewPoolVector3Array*: proc (dest: var GodotArray,
                                   src: GodotPoolVector3Array)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  arrayNewPoolVector2Array*: proc (dest: var GodotArray,
                                   src: GodotPoolVector2Array)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  arrayNewPoolStringArray*: proc (dest: var GodotArray,
                                  src: GodotPoolStringArray)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  arrayNewPoolRealArray*: proc (dest: var GodotArray, src: GodotPoolRealArray)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  arrayNewPoolIntArray*: proc (dest: var GodotArray, src: GodotPoolIntArray)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayNewPoolByteArray*: proc (dest: var GodotArray, src: GodotPoolByteArray)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  arraySet*: proc (self: var GodotArray, idx: cint, val: GodotVariant)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayGet*: proc (self: GodotArray, idx: cint): GodotVariant
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayOperatorIndex*: proc (self: var GodotArray, idx: cint): ptr GodotVariant
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayAppend*: proc (self: var GodotArray, val: GodotVariant)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayClear*: proc (self: var GodotArray)
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayCount*: proc (self: GodotArray, val: GodotVariant): cint
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayEmpty*: proc (self: GodotArray): bool
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayErase*: proc (self: var GodotArray, val: GodotVariant)
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayFront*: proc (self: GodotArray): GodotVariant
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayBack*: proc (self: GodotArray): GodotVariant
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayFind*: proc (self: GodotArray, what: GodotVariant, fromIdx: cint): cint
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayFindLast*: proc (self: GodotArray, what: GodotVariant): cint
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayHas*: proc (self: GodotArray, val: GodotVariant): bool
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayHash*: proc (self: GodotArray): cint
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayInsert*: proc (self: var GodotArray, pos: cint, val: GodotVariant): Error
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayInvert*: proc (self: var GodotArray)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayPopFront*: proc (self: GodotArray): GodotVariant
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayPopBack*: proc (self: GodotArray): GodotVariant
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayPushBack*: proc (self: var GodotArray, val: GodotVariant)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayPushFront*: proc (self: var GodotArray, val: GodotVariant)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayRemove*: proc (self: var GodotArray, idx: cint)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayResize*: proc (self: var GodotArray, size: cint)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayRFind*: proc (self: GodotArray, what: GodotVariant, fromIdx: cint): cint
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arraySize*: proc (self: GodotArray): cint
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arraySort*: proc (self: var GodotArray)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arraySortCustom*: proc (self: var GodotArray, obj: ptr GodotObject,
                          f: GodotString)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  arrayDestroy*: proc (self: var GodotArray)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Dictionary API
  dictionaryNew*: proc (dest: var GodotDictionary)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryNewCopy*: proc (dest: var GodotDictionary, src: GodotDictionary)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryDestroy*: proc (self: var GodotDictionary)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionarySize*: proc (self: GodotDictionary): cint
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryEmpty*: proc (self: GodotDictionary): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryClear*: proc (self: var GodotDictionary)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryHas*: proc (self: GodotDictionary, key: GodotVariant): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryHasAll*: proc (self: GodotDictionary, keys: GodotArray): bool
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryErase*: proc (self: var GodotDictionary, key: GodotVariant)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryHash*: proc (self: GodotDictionary): cint
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryKeys*: proc (self: GodotDictionary): GodotArray
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryValues*: proc (self: GodotDictionary): GodotArray
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryGet*: proc (self: GodotDictionary, key: GodotVariant): GodotVariant
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionarySet*: proc (self: var GodotDictionary, key, value: GodotVariant)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryOperatorIndex*: proc (self: var GodotDictionary,
                                  key: GodotVariant): ptr GodotVariant
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  dictionaryNext*: proc (self: GodotDictionary,
                         key: GodotVariant): ptr GodotVariant
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  dictionaryOperatorEqual*: proc (self, other: GodotDictionary): bool
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  dictionaryToJson*: proc (self: GodotDictionary): GodotString
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # NodePath API
  nodePathNew*: proc (dest: var GodotNodePath, src: GodotString)
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathNewCopy*: proc (dest: var GodotNodePath, src: GodotNodePath)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathDestroy*: proc (self: var GodotNodePath)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathAsString*: proc (self: GodotNodePath): GodotString
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathIsAbsolute*: proc (self: GodotNodePath): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathGetNameCount*: proc (self: GodotNodePath): cint
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathGetName*: proc (self: GodotNodePath, idx: cint): GodotString
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathGetSubnameCount*: proc (self: GodotNodePath): cint
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  nodePathGetSubname*: proc (self: GodotNodePath, idx: cint): GodotString
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathGetProperty*: proc (self: GodotNodePath): GodotString
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathIsEmpty*: proc (self: GodotNodePath): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  nodePathOperatorEqual*: proc (self, other: GodotNodePath): bool
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}

  # Plane API
  planeNewWithReals*: proc (dest: var Plane, a, b, c, d: float32)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeNewWithVectors*: proc (dest: var Plane, v1, v2, v3: Vector3)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeNewWithNormal*: proc (dest: var Plane, normal: Vector3, d: float32)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeAsString*: proc (self: Plane): GodotString
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeNormalized*: proc (self: Plane): Plane
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeCenter*: proc (self: Plane): Vector3
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeGetAnyPoint*: proc (self: Plane): Vector3
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeIsPointOver*: proc (self: Plane, point: Vector3): bool
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeDistanceTo*: proc (self: Plane, point: Vector3): float32
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeHasPoint*: proc (self: Plane, point: Vector3, epsilon: float32): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeProject*: proc (self: Plane, point: Vector3): Vector3
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeIntersect3*: proc (self: Plane, dest: var Vector3, b, c: Plane): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeIntersectsRay*: proc (self: Plane, dest: var Vector3,
                             point, dir: Vector3): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeIntersectsSegment*: proc (self: Plane, dest: var Vector3,
                                 segmentBegin, segmentEnd: Vector3): bool
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  planeOperatorNeg*: proc (self: Plane): Plane
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeOperatorEqual*: proc (self, other: Plane): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeSetNormal*: proc (self: var Plane, normal: Vector3)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeGetNormal*: proc (self: Plane): Vector3
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeGetD*: proc (self: Plane): float32
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  planeSetD*: proc (self: var Plane, d: float32)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Rect2 API
  rect2NewWithPositionAndSize*: proc (dest: var Rect2, pos, size: Vector2)
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  rect2New*: proc (dest: var Rect2, x, y, width, height: float32)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2AsString*: proc (self: Rect2): GodotString
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2GetArea*: proc (self: Rect2): float32
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Intersects*: proc (self, other: Rect2): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Encloses*: proc (self, other: Rect2): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2HasNoArea*: proc (self: Rect2): bool
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Clip*: proc (self, other: Rect2): Rect2
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Merge*: proc (self, other: Rect2): Rect2
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2HasPoint*: proc (self: Rect2, point: Vector2): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Grow*: proc (self: Rect2, by: float32): Rect2
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2Expand*: proc (self: Rect2, to: Vector2): Rect2
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2OperatorEqual*: proc (self, other: Rect2): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2GetPosition*: proc (self: Rect2): Vector2
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2GetSize*: proc (self: Rect2): Vector2
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2SetPosition*: proc (self: var Rect2, pos: Vector2)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect2SetSize*: proc (self: var Rect2, size: Vector2)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Rect3 API
  rect3New*: proc (dest: var Rect3, pos, size: Vector3)
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetPosition*: proc (self: Rect3): Vector3
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3SetPosition*: proc (self: var Rect3, pos: Vector3)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetSize*: proc (self: Rect3): Vector3
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3SetSize*: proc (self: var Rect3, pos: Vector3)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3AsString*: proc (self: Rect3): GodotString
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetArea*: proc (self: Rect3): float32
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3HasNoArea*: proc (self: Rect3): bool
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3HasNoSurface*: proc (self: Rect3): bool
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3Intersects*: proc (self, other: Rect3): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3Encloses*: proc (self, other: Rect3): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3Merge*: proc (self, other: Rect3): Rect3
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3Intersection*: proc (self, other: Rect3): Rect3
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3IntersectsPlane*: proc (self: Rect3, plane: Plane): bool
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3IntersectsSegment*: proc (self: Rect3, vFrom, vTo: Vector3): bool
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  rect3HasPoint*: proc (self: Rect3, point: Vector3): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetSupport*: proc (self: Rect3, dir: Vector3): Vector3
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetLongestAxis*: proc (self: Rect3): Vector3
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetLongestAxisIndex*: proc (self: Rect3): cint
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  rect3GetLongestAxisSize*: proc (self: Rect3): float32
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  rect3GetShortestAxis*: proc (self: Rect3): Vector3
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetShortestAxisIndex*: proc (self: Rect3): cint
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  rect3GetShortestAxisSize*: proc (self: Rect3): float32
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  rect3Expand*: proc (self: Rect3, toPoint: Vector3): Rect3
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3Grow*: proc (self: Rect3, by: float32): Rect3
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3GetEndpoint*: proc (self: Rect3, idx: cint): Vector3
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  rect3OperatorEqual*: proc (self, other: Rect3): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # RID API
  ridNew*: proc (dest: var RID)
                {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  ridGetID*: proc (self: RID): cint
                  {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  ridNewWithResource*: proc (dest: var RID, obj: ptr GodotObject)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  ridOperatorEqual*: proc (self, other: RID): bool
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  ridOperatorLess*: proc (self, other: RID): bool
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Transform API
  transformNewWithAxisOrigin*: proc (dest: var Transform,
                                     xAxis, yAxis, zAxis, origin: Vector3)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  transformNew*: proc (dest: var Transform, basis: Basis, origin: Vector3)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformGetBasis*: proc (self: Transform): Basis
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformSetBasis*: proc (self: var Transform, basis: Basis)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformGetOrigin*: proc (self: Transform): Vector3
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformSetOrigin*: proc (self: var Transform, v: Vector3)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformAsString*: proc (self: Transform): GodotString
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformInverse*: proc (self: Transform): Transform
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformAffineInverse*: proc (self: Transform): Transform
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  transformOrthonormalized*: proc (self: Transform): Transform
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  transformRotated*: proc (self: Transform, axis: Vector3,
                           phi: float32): Transform
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformScaled*: proc (self: Transform, scale: Vector3): Transform
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformTranslated*: proc (self: Transform, offset: Vector3): Transform
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformLookingAt*: proc (self: Transform, target, up: Vector3): Transform
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformXformPlane*: proc (self: Transform, plane: Plane): Plane
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformXformInvPlane*: proc (self: Transform, plane: Plane): Plane
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  transformNewIdentity*: proc (dest: var Transform)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformOperatorEqual*: proc (self, other: Transform): bool
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  transformOperatorMultiply*: proc (self, other: Transform): Transform
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  transformXformVector3*: proc (self: Transform, v: Vector3): Vector3
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  transformXformInvVector3*: proc (self: Transform, v: Vector3): Vector3
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  transformXformRect3*: proc (self: Transform, v: Rect3): Rect3
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transformXformInvRect3*: proc (self: Transform, v: Rect3): Rect3
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}

  # Transform2D API
  transform2DNew*: proc (dest: var Transform2D, rot: float32, pos: Vector2)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DNewAxisOrigin*: proc (dest: var Transform2D,
                                   xAxis, yAxis, origin: Vector2)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  transform2DAsString*: proc (self: Transform2D): GodotString
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DInverse*: proc (self: Transform2D): Transform2D
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DAffineInverse*: proc (self: Transform2D): Transform2D
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  transform2DGetRotation*: proc (self: Transform2D): float32
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  transform2DGetOrigin*: proc (self: Transform2D): Vector2
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DGetScale*: proc (self: Transform2D): Vector2
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DOrthonormalized*: proc (self: Transform2D): Transform2D
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  transform2DRotated*: proc (self: Transform2D, phi: float32): Transform2D
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DScaled*: proc (self: Transform2D, scale: Vector2): Transform2D
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  transform2DTranslated*: proc (self: Transform2D, offset: Vector2): Transform2D
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  transform2DXformVector2*: proc (self: Transform2D, v: Vector2): Vector2
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  transform2DXformInvVector2*: proc (self: Transform2D, v: Vector2): Vector2
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  transform2DBasisXformVector2*: proc (self: Transform2D, v: Vector2): Vector2
                                      {.noconv, raises: [], gcsafe, tags: [],
                                        locks: 0.}
  transform2DBasisXformInvVector2*: proc (self: Transform2D,
                                          v: Vector2): Vector2
                                         {.noconv, raises: [], gcsafe, tags: [],
                                           locks: 0.}
  transform2DInterpolateWith*: proc (self, other: Transform2D,
                                     t: float32): Transform2D
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  transform2DOperatorEqual*: proc (self, other: Transform2D): bool
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  transform2DOperatorMultiply*: proc (self, other: Transform2D): Transform2D
                                     {.noconv, raises: [], gcsafe, tags: [],
                                       locks: 0.}
  transform2DNewIdentity*: proc (dest: var Transform2D)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  transform2DXformRect2*: proc (self: Transform2D, v: Rect2): Rect2
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  transform2DXformInvRect2*: proc (self: Transform2D, v: Rect2): Rect2
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}

  # Variant API
  variantGetType*: proc (v: GodotVariant): VariantType
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewCopy*: proc (dest: var GodotVariant, src: GodotVariant)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewNil*: proc (dest: var GodotVariant)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewBool*: proc (dest: var GodotVariant, val: bool)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewUInt*: proc (dest: var GodotVariant, val: uint64)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewInt*: proc (dest: var GodotVariant, val: int64)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewReal*: proc (dest: var GodotVariant, val: float64)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewString*: proc (dest: var GodotVariant, val: GodotString)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewVector2*: proc (dest: var GodotVariant, val: Vector2)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewRect2*: proc (dest: var GodotVariant, val: Rect2)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewVector3*: proc (dest: var GodotVariant, val: Vector3)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewTransform2D*: proc (dest: var GodotVariant, val: Transform2D)
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  variantNewPlane*: proc (dest: var GodotVariant, val: Plane)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewQuat*: proc (dest: var GodotVariant, val: Quat)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewRect3*: proc (dest: var GodotVariant, val: Rect3)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewBasis*: proc (dest: var GodotVariant, val: Basis)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewTransform*: proc (dest: var GodotVariant, val: Transform)
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewColor*: proc (dest: var GodotVariant, val: Color)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewNodePath*: proc (dest: var GodotVariant, val: GodotNodePath)
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewRID*: proc (dest: var GodotVariant, val: RID)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewObject*: proc (dest: var GodotVariant, val: ptr GodotObject)
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewDictionary*: proc (dest: var GodotVariant, val: GodotDictionary)
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewArray*: proc (dest: var GodotVariant, val: GodotArray)
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantNewPoolByteArray*: proc (dest: var GodotVariant,
                                  val: GodotPoolByteArray)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  variantNewPoolIntArray*: proc (dest: var GodotVariant, val: GodotPoolIntArray)
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  variantNewPoolRealArray*: proc (dest: var GodotVariant,
                                  val: GodotPoolRealArray)
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  variantNewPoolStringArray*: proc (dest: var GodotVariant,
                                    val: GodotPoolStringArray)
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  variantNewPoolVector2Array*: proc (dest: var GodotVariant,
                                     val: GodotPoolVector2Array)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  variantNewPoolVector3Array*: proc (dest: var GodotVariant,
                                     val: GodotPoolVector3Array)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  variantNewPoolColorArray*: proc (dest: var GodotVariant,
                                   val: GodotPoolColorArray)
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  variantAsBool*: proc (self: GodotVariant): bool
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsUInt*: proc (self: GodotVariant): uint64
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsInt*: proc (self: GodotVariant): int64
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsReal*: proc (self: GodotVariant): float64
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsString*: proc (self: GodotVariant): GodotString
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsVector2*: proc (self: GodotVariant): Vector2
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsRect2*: proc (self: GodotVariant): Rect2
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsVector3*: proc (self: GodotVariant): Vector3
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsTransform2D*: proc (self: GodotVariant): Transform2D
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsPlane*: proc (self: GodotVariant): Plane
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsQuat*: proc (self: GodotVariant): Quat
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsRect3*: proc (self: GodotVariant): Rect3
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsBasis*: proc (self: GodotVariant): Basis
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsTransform*: proc (self: GodotVariant): Transform
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsColor*: proc (self: GodotVariant): Color
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsNodePath*: proc (self: GodotVariant): GodotNodePath
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsRID*: proc (self: GodotVariant): RID
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsObject*: proc (self: GodotVariant): ptr GodotObject
                         {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsDictionary*: proc (self: GodotVariant): GodotDictionary
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsArray*: proc (self: GodotVariant): GodotArray
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantAsPoolByteArray*: proc (self: GodotVariant): GodotPoolByteArray
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  variantAsPoolIntArray*: proc (self: GodotVariant): GodotPoolIntArray
                               {.noconv, raises: [], gcsafe, tags: [],
                                 locks: 0.}
  variantAsPoolRealArray*: proc (self: GodotVariant): GodotPoolRealArray
                                {.noconv, raises: [], gcsafe, tags: [],
                                  locks: 0.}
  variantAsPoolStringArray*: proc (self: GodotVariant): GodotPoolStringArray
                                  {.noconv, raises: [], gcsafe, tags: [],
                                    locks: 0.}
  variantAsPoolVector2Array*: proc (self: GodotVariant): GodotPoolVector2Array
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  variantAsPoolVector3Array*: proc (self: GodotVariant): GodotPoolVector3Array
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  variantAsPoolColorArray*: proc (self: GodotVariant): GodotPoolColorArray
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}
  variantCall*: proc (self: var GodotVariant, meth: GodotString,
                      args: ptr array[MAX_ARG_COUNT, ptr GodotVariant],
                      argcount: cint,
                      callError: var VariantCallError): GodotVariant
                     {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantHasMethod*: proc (self: GodotVariant, meth: GodotString): bool
                          {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantOperatorEqual*: proc (self, other: GodotVariant): bool
                              {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantOperatorLess*: proc (self, other: GodotVariant): bool
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantHashCompare*: proc (self, other: GodotVariant): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantBooleanize*: proc (self: GodotVariant): bool
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  variantDestroy*: proc (self: var GodotVariant)
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # String API
  stringNew*: proc (dest: var GodotString)
                   {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringNewCopy*: proc (dest: var GodotString, src: GodotString)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringNewData*: proc (dest: var GodotString, contents: cstring, size: cint)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringNewUTF16Data: pointer
  stringGetData*: proc (self: GodotString, dest: cstring, size: var cint)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringOperatorIndex: pointer
  stringCStr*: proc (self: GodotString): cstring
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringUTF16Str: pointer
  stringOperatorEqual*: proc (self, other: GodotString): bool
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringOperatorLess*: proc (self, other: GodotString): bool
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringOperatorPlus*: proc (self, other: GodotString): GodotString
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringLength*: proc (self: GodotString): cint
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  stringBeginsWith: pointer
  stringBeginsWithCharArray: pointer
  stringBigrams: pointer
  stringChr: pointer
  stringEndsWith: pointer
  stringFind: pointer
  stringFindFrom: pointer
  stringFindmk: pointer
  stringFindmkFrom: pointer
  stringFindmkFromInPlace: pointer
  stringFindn: pointer
  stringFindnFrom: pointer
  stringFindLast: pointer
  stringFormat: pointer
  stringFormatWithCustomPlaceholder: pointer
  stringHexEncodeBuffer: pointer
  stringHexToInt: pointer
  stringHexToIntWithoutPrefix: pointer
  stringInsert: pointer
  stringIsNumeric: pointer
  stringIsSubsequenceOf: pointer
  stringIsSubsequenceOfi: pointer
  stringLpad: pointer
  stringLpadWithCustomCharacter: pointer
  stringMatch: pointer
  stringMatchn: pointer
  stringMd5: pointer
  stringNum: pointer
  stringNumInt64: pointer
  stringNumInt64Capitalized: pointer
  stringNumReal: pointer
  stringNumScientific: pointer
  stringNumWithDecimals: pointer
  stringPadDecimals: pointer
  stringPadZeros: pointer
  stringReplaceFirst: pointer
  stringReplace: pointer
  stringReplacen: pointer
  stringRfind: pointer
  stringRfindn: pointer
  stringRfindFrom: pointer
  stringRfindnFrom: pointer
  stringRpad: pointer
  stringRpadWithCustomCharacter: pointer
  stringSimilarity: pointer
  stringSprintf: pointer
  stringSubstr: pointer
  stringToDouble: pointer
  stringToFloat: pointer
  stringToInt: pointer
  stringCamelcaseToUnderscore: pointer
  stringCamelcaseToUnderscoreLowercased: pointer
  stringCapitalize: pointer
  stringCharToDouble: pointer
  stringCharToInt: pointer
  stringWcharToInt: pointer
  stringCharToIntWithLen: pointer
  stringCharToInt64WithLen: pointer
  stringHexToInt64: pointer
  stringHexToInt64WithPrefix: pointer
  stringToInt64: pointer
  stringUnicodeCharToDouble: pointer
  stringGetSliceCount: pointer
  stringGetSlice: pointer
  stringGetSlicec: pointer
  stringSplit: pointer
  stringSplitAllowEmpty: pointer
  stringSplitFloats: pointer
  stringSplitFloatsAllowsEmpty: pointer
  stringSplitFloatsMk: pointer
  stringSplitFloatsMkAllowsEmpty: pointer
  stringSplitInts: pointer
  stringSplitIntsAllowsEmpty: pointer
  stringSplitIntsMk: pointer
  stringSplitIntsMkAllowsEmpty: pointer
  stringSplitSpaces: pointer
  stringCharLowercase: pointer
  stringCharUppercase: pointer
  stringToLower: pointer
  stringToUpper: pointer
  stringGetBasename: pointer
  stringGetExtension: pointer
  stringLeft: pointer
  stringOrdAt: pointer
  stringPlusFile: pointer
  stringRight: pointer
  stringStripEdges: pointer
  stringStripEscapes: pointer
  stringErase: pointer
  stringAscii: pointer
  stringAsciiExtended: pointer
  stringUtf8: pointer
  stringParseUtf8: pointer
  stringParseUtf8WithLen: pointer
  stringCharsToUtf8: pointer
  stringCharsToUtf8WithLen: pointer
  stringHash: pointer
  stringHash64: pointer
  stringHashChars: pointer
  stringHashCharsWithLen: pointer
  stringHashUtf8Chars: pointer
  stringHashUtf8CharsWithLen: pointer
  stringMd5Buffer: pointer
  stringMd5Text: pointer
  stringSha256Buffer: pointer
  stringSha256Text: pointer
  stringEmpty: pointer
  stringGetBaseDir: pointer
  stringGetFile: pointer
  stringHumanizeSize: pointer
  stringIsAbsPath: pointer
  stringIsRelPath: pointer
  stringIsResourceFile: pointer
  stringPathTo: pointer
  stringPathToFile: pointer
  stringSimplifyPath: pointer
  stringCEscape: pointer
  stringCEscapeMultiline: pointer
  stringCUnescape: pointer
  stringHttpEscape: pointer
  stringHttpUnescape: pointer
  stringJsonEscape: pointer
  stringWordWrap: pointer
  stringXmlEscape: pointer
  stringXmlEscapeWithQuotes: pointer
  stringXmlUnescape: pointer
  stringPercentDecode: pointer
  stringPercentEncode: pointer
  stringIsValidFloat: pointer
  stringIsValidHexNumber: pointer
  stringIsValidHtmlColor: pointer
  stringIsValidIdentifier: pointer
  stringIsValidInteger: pointer
  stringIsValidIpAddress: pointer
  stringDestroy*: proc (self: var GodotString)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # Misc API
  objectDestroy*: proc (self: ptr GodotObject)
                       {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  globalGetSingleton*: proc (name: cstring): ptr GodotObject
                            {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  methodBindGetMethod*: proc (className,
                              methodName: cstring): ptr GodotMethodBind
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  methodBindPtrCall*: proc (methodBind: ptr GodotMethodBind,
                            obj: ptr GodotObject,
                            args: ptr array[MAX_ARG_COUNT, pointer],
                            ret: pointer)
                           {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  methodBindCall*: proc (methodBind: ptr GodotMethodBind, obj: ptr GodotObject,
                         args: ptr array[MAX_ARG_COUNT, ptr GodotVariant],
                         argCount: cint,
                         callError: var VariantCallError): GodotVariant
                        {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  getClassConstructor*: proc (className: cstring): GodotClassConstructor
                             {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  alloc*: proc (bytes: cint): pointer
               {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  realloc*: proc (p: pointer, bytes: cint): pointer
                 {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  free*: proc (p: pointer) {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  printError*: proc (description, function, file: cstring, line: cint)
                    {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  printWarning*: proc (description, function, file: cstring, line: cint)
                      {.noconv, raises: [], gcsafe, tags: [], locks: 0.}
  print*: proc (message: GodotString)
               {.noconv, raises: [], gcsafe, tags: [], locks: 0.}

  # NativeScript API
  nativeScriptRegisterClass*: proc (gdnativeHandle: pointer,
                                    name, base: cstring,
                                    createFunc: GodotInstanceCreateFunc,
                                    destroyFunc: GodotInstanceDestroyFunc)
                                   {.noconv, raises: [], gcsafe, tags: [],
                                     locks: 0.}
  nativeScriptRegisterToolClass*: proc (gdnativeHandle: pointer,
                                        name, base: cstring,
                                        createFunc: GodotInstanceCreateFunc,
                                        destroyFunc: GodotInstanceDestroyFunc)
                                       {.noconv, raises: [], gcsafe, tags: [],
                                         locks: 0.}
  nativeScriptRegisterMethod*: proc (gdnativeHandle: pointer,
                                     name, functionName: cstring,
                                     attr: GodotMethodAttributes,
                                     meth: GodotInstanceMethod)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  nativeScriptRegisterProperty*: proc (gdnativeHandle: pointer,
                                       name, path: cstring,
                                       attr: ptr GodotPropertyAttributes,
                                       setFunc: GodotPropertySetFunc,
                                       getFunc: GodotPropertyGetFunc)
                                      {.noconv, raises: [], gcsafe, tags: [],
                                        locks: 0.}
  nativeScriptRegisterSignal*: proc (gdnativeHandle: pointer, name: cstring,
                                     signal: GodotSignal)
                                    {.noconv, raises: [], gcsafe, tags: [],
                                      locks: 0.}
  nativeScriptGetUserdata*: proc (obj: ptr GodotObject): pointer
                                 {.noconv, raises: [], gcsafe, tags: [],
                                   locks: 0.}

var gdNativeAPI: ptr GDNativeAPI

proc getGDNativeAPI*(): ptr GDNativeAPI {.inline.} =
  gdNativeAPI

proc setGDNativeAPI*(apiStruct: pointer) {.inline.} =
  gdNativeAPI = cast[ptr GDNativeAPI](apiStruct)