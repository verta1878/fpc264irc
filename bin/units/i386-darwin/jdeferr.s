# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDEFERR
_THREADVARLIST_JDEFERR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_JDEFERR_JMSG_LASTMSGCODE
_TC_JDEFERR_JMSG_LASTMSGCODE:
	.byte	155

.data
	.align 3
.globl	_TC_JDEFERR_JPEG_STD_MESSAGE_TABLE
_TC_JDEFERR_JPEG_STD_MESSAGE_TABLE:
	.byte	21
	.ascii	"Bogus message code %d"
	.ascii	"                                                   "
	.ascii	"        "
	.byte	56
	.ascii	"Sorry, there are legal restrictions on arithmetic c"
	.ascii	"oding"
	.ascii	"                        "
	.byte	31
	.ascii	"ALIGN_TYPE is wrong, please fix"
	.ascii	"                                                 "
	.byte	36
	.ascii	"MAX_ALLOC_CHUNK is wrong, please fix"
	.ascii	"                                            "
	.byte	25
	.ascii	"Bogus buffer control mode"
	.ascii	"                                                   "
	.ascii	"    "
	.byte	30
	.ascii	"Invalid component ID %d in SOS"
	.ascii	"                                                  "
	.byte	28
	.ascii	"DCT coefficient out of range"
	.ascii	"                                                   "
	.ascii	" "
	.byte	39
	.ascii	"IDCT output block size %d not supported"
	.ascii	"                                         "
	.byte	30
	.ascii	"Bogus Huffman table definition"
	.ascii	"                                                  "
	.byte	22
	.ascii	"Bogus input colorspace"
	.ascii	"                                                   "
	.ascii	"       "
	.byte	21
	.ascii	"Bogus JPEG colorspace"
	.ascii	"                                                   "
	.ascii	"        "
	.byte	19
	.ascii	"Bogus marker length"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	60
	.ascii	"Wrong JPEG library version: library is %d, caller e"
	.ascii	"xpects %d"
	.ascii	"                    "
	.byte	47
	.ascii	"Sampling factors too large for interleaved scan"
	.ascii	"                                 "
	.byte	27
	.ascii	"Invalid memory pool code %d"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	34
	.ascii	"Unsupported JPEG data precision %d"
	.ascii	"                                              "
	.byte	54
	.ascii	"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al"
	.ascii	"=%d"
	.ascii	"                          "
	.byte	54
	.ascii	"Invalid progressive parameters at scan script entry"
	.ascii	" %d"
	.ascii	"                          "
	.byte	22
	.ascii	"Bogus sampling factors"
	.ascii	"                                                   "
	.ascii	"       "
	.byte	31
	.ascii	"Invalid scan script at entry %d"
	.ascii	"                                                 "
	.byte	41
	.ascii	"Improper call to JPEG library in state %d"
	.ascii	"                                       "
	.byte	76
	.ascii	"JPEG parameter struct mismatch: library thinks size"
	.ascii	" is %d, caller expects %d"
	.ascii	"    "
	.byte	26
	.ascii	"Bogus virtual array access"
	.ascii	"                                                   "
	.ascii	"   "
	.byte	42
	.ascii	"Buffer passed to JPEG library is too small"
	.ascii	"                                      "
	.byte	27
	.ascii	"Suspension not allowed here"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	36
	.ascii	"CCIR601 sampling not implemented yet"
	.ascii	"                                            "
	.byte	37
	.ascii	"Too many color components: %d, max %d"
	.ascii	"                                           "
	.byte	36
	.ascii	"Unsupported color conversion request"
	.ascii	"                                            "
	.byte	18
	.ascii	"Bogus DAC index %d"
	.ascii	"                                                   "
	.ascii	"           "
	.byte	19
	.ascii	"Bogus DAC value $%x"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	16
	.ascii	"Bogus DHT counts"
	.ascii	"                                                   "
	.ascii	"             "
	.byte	18
	.ascii	"Bogus DHT index %d"
	.ascii	"                                                   "
	.ascii	"           "
	.byte	18
	.ascii	"Bogus DQT index %d"
	.ascii	"                                                   "
	.ascii	"           "
	.byte	36
	.ascii	"Empty JPEG image (DNL not supported)"
	.ascii	"                                            "
	.byte	20
	.ascii	"Read from EMS failed"
	.ascii	"                                                   "
	.ascii	"         "
	.byte	19
	.ascii	"Write to EMS failed"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	32
	.ascii	"Didn't expect more than one scan"
	.ascii	"                                                "
	.byte	21
	.ascii	"Input file read error"
	.ascii	"                                                   "
	.ascii	"        "
	.byte	46
	.ascii	"Output file write error --- out of disk space?"
	.ascii	"                                  "
	.byte	39
	.ascii	"Fractional sampling not implemented yet"
	.ascii	"                                         "
	.byte	32
	.ascii	"Huffman code size table overflow"
	.ascii	"                                                "
	.byte	32
	.ascii	"Missing Huffman code table entry"
	.ascii	"                                                "
	.byte	46
	.ascii	"Maximum supported image dimension is %d pixels"
	.ascii	"                                  "
	.byte	16
	.ascii	"Empty input file"
	.ascii	"                                                   "
	.ascii	"             "
	.byte	27
	.ascii	"Premature end of input file"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	61
	.ascii	"Cannot transcode due to multiple use of quantizatio"
	.ascii	"n table %d"
	.ascii	"                   "
	.byte	38
	.ascii	"Scan script does not transmit all data"
	.ascii	"                                          "
	.byte	38
	.ascii	"Invalid color quantization mode change"
	.ascii	"                                          "
	.byte	19
	.ascii	"Not implemented yet"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	45
	.ascii	"Requested feature was omitted at compile time"
	.ascii	"                                   "
	.byte	27
	.ascii	"Backing store not supported"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	35
	.ascii	"Huffman table $%02x was not defined"
	.ascii	"                                             "
	.byte	33
	.ascii	"JPEG datastream contains no image"
	.ascii	"                                               "
	.byte	40
	.ascii	"Quantization table $%02x was not defined"
	.ascii	"                                        "
	.byte	40
	.ascii	"Not a JPEG file: starts with $%02x $%02x"
	.ascii	"                                        "
	.byte	29
	.ascii	"Insufficient memory (case %d)"
	.ascii	"                                                   "
	.byte	45
	.ascii	"Cannot quantize more than %d color components"
	.ascii	"                                   "
	.byte	39
	.ascii	"Cannot quantize to fewer than %d colors"
	.ascii	"                                         "
	.byte	38
	.ascii	"Cannot quantize to more than %d colors"
	.ascii	"                                          "
	.byte	44
	.ascii	"Invalid JPEG file structure: two SOF markers"
	.ascii	"                                    "
	.byte	47
	.ascii	"Invalid JPEG file structure: missing SOS marker"
	.ascii	"                                 "
	.byte	40
	.ascii	"Unsupported JPEG process: SOF type $%02x"
	.ascii	"                                        "
	.byte	44
	.ascii	"Invalid JPEG file structure: two SOI markers"
	.ascii	"                                    "
	.byte	43
	.ascii	"Invalid JPEG file structure: SOS before SOF"
	.ascii	"                                     "
	.byte	34
	.ascii	"Failed to create temporary file %s"
	.ascii	"                                              "
	.byte	29
	.ascii	"Read failed on temporary file"
	.ascii	"                                                   "
	.byte	29
	.ascii	"Seek failed on temporary file"
	.ascii	"                                                   "
	.byte	53
	.ascii	"Write failed on temporary file --- out of disk spac"
	.ascii	"e?"
	.ascii	"                           "
	.byte	41
	.ascii	"Application transferred too few scanlines"
	.ascii	"                                       "
	.byte	29
	.ascii	"Unsupported marker type $%02x"
	.ascii	"                                                   "
	.byte	34
	.ascii	"Virtual array controller messed up"
	.ascii	"                                              "
	.byte	38
	.ascii	"Image too wide for this implementation"
	.ascii	"                                          "
	.byte	20
	.ascii	"Read from XMS failed"
	.ascii	"                                                   "
	.ascii	"         "
	.byte	19
	.ascii	"Write to XMS failed"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	34
	.ascii	"Copyright (C) 1996, Thomas G. Lane"
	.ascii	"                                              "
	.byte	12
	.ascii	"6a  7-Feb-96"
	.ascii	"                                                   "
	.ascii	"                 "
	.byte	61
	.ascii	"Caution: quantization tables are too coarse for bas"
	.ascii	"eline JPEG"
	.ascii	"                   "
	.byte	63
	.ascii	"Adobe APP14 marker: version %d, flags $%04x $%04x, "
	.ascii	"transform %d"
	.ascii	"                 "
	.byte	41
	.ascii	"Unknown APP0 marker (not JFIF), length %d"
	.ascii	"                                       "
	.byte	43
	.ascii	"Unknown APP14 marker (not Adobe), length %d"
	.ascii	"                                     "
	.byte	36
	.ascii	"Define Arithmetic Table $%02x: $%02x"
	.ascii	"                                            "
	.byte	26
	.ascii	"Define Huffman Table $%02x"
	.ascii	"                                                   "
	.ascii	"   "
	.byte	42
	.ascii	"Define Quantization Table %d  precision %d"
	.ascii	"                                      "
	.byte	26
	.ascii	"Define Restart Interval %d"
	.ascii	"                                                   "
	.ascii	"   "
	.byte	19
	.ascii	"Freed EMS handle %d"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	22
	.ascii	"Obtained EMS handle %d"
	.ascii	"                                                   "
	.ascii	"       "
	.byte	12
	.ascii	"End Of Image"
	.ascii	"                                                   "
	.ascii	"                 "
	.byte	39
	.ascii	"        %3d %3d %3d %3d %3d %3d %3d %3d"
	.ascii	"                                         "
	.byte	35
	.ascii	"JFIF APP0 marker, density %dx%d  %d"
	.ascii	"                                             "
	.byte	59
	.ascii	"Warning: thumbnail image size does not match data l"
	.ascii	"ength %d"
	.ascii	"                     "
	.byte	45
	.ascii	"JFIF extension marker: type 0x%02x, length %u"
	.ascii	"                                   "
	.byte	32
	.ascii	"    with %d x %d thumbnail image"
	.ascii	"                                                "
	.byte	32
	.ascii	"Skipping marker $%02x, length %d"
	.ascii	"                                                "
	.byte	23
	.ascii	"Unexpected marker $%02x"
	.ascii	"                                                   "
	.ascii	"      "
	.byte	39
	.ascii	"        %4d %4d %4d %4d %4d %4d %4d %4d"
	.ascii	"                                         "
	.byte	34
	.ascii	"Quantizing to %d = %d*%d*%d colors"
	.ascii	"                                              "
	.byte	23
	.ascii	"Quantizing to %d colors"
	.ascii	"                                                   "
	.ascii	"      "
	.byte	35
	.ascii	"Selected %d colors for quantization"
	.ascii	"                                             "
	.byte	35
	.ascii	"At marker $%02x, recovery action %d"
	.ascii	"                                             "
	.byte	5
	.ascii	"RST%d"
	.ascii	"                                                   "
	.ascii	"                        "
	.byte	56
	.ascii	"Smoothing not supported with nonstandard sampling r"
	.ascii	"atios"
	.ascii	"                        "
	.byte	56
	.ascii	"Start Of Frame $%02x: width=%d, height=%d, componen"
	.ascii	"ts=%d"
	.ascii	"                        "
	.byte	30
	.ascii	"    Component %d: %dhx%dv q=%d"
	.ascii	"                                                  "
	.byte	14
	.ascii	"Start of Image"
	.ascii	"                                                   "
	.ascii	"               "
	.byte	28
	.ascii	"Start Of Scan: %d components"
	.ascii	"                                                   "
	.ascii	" "
	.byte	29
	.ascii	"    Component %d: dc=%d ac=%d"
	.ascii	"                                                   "
	.byte	28
	.ascii	"  Ss=%d, Se=%d, Ah=%d, Al=%d"
	.ascii	"                                                   "
	.ascii	" "
	.byte	24
	.ascii	"Closed temporary file %s"
	.ascii	"                                                   "
	.ascii	"     "
	.byte	24
	.ascii	"Opened temporary file %s"
	.ascii	"                                                   "
	.ascii	"     "
	.byte	65
	.ascii	"JFIF extension marker: JPEG-compressed thumbnail im"
	.ascii	"age, length %u"
	.ascii	"               "
	.byte	57
	.ascii	"JFIF extension marker: palette thumbnail image, len"
	.ascii	"gth %u"
	.ascii	"                       "
	.byte	53
	.ascii	"JFIF extension marker: RGB thumbnail image, length "
	.ascii	"%u"
	.ascii	"                           "
	.byte	51
	.ascii	"Unrecognized component IDs %d %d %d, assuming YCbCr"
	.ascii	"                             "
	.byte	19
	.ascii	"Freed XMS handle %d"
	.ascii	"                                                   "
	.ascii	"          "
	.byte	22
	.ascii	"Obtained XMS handle %d"
	.ascii	"                                                   "
	.ascii	"       "
	.byte	37
	.ascii	"Unknown Adobe color transform code %d"
	.ascii	"                                           "
	.byte	65
	.ascii	"Inconsistent progression sequence for component %d "
	.ascii	"coefficient %d"
	.ascii	"               "
	.byte	58
	.ascii	"Corrupt JPEG data: %d extraneous bytes before marke"
	.ascii	"r $%02x"
	.ascii	"                      "
	.byte	48
	.ascii	"Corrupt JPEG data: premature end of data segment"
	.ascii	"                                "
	.byte	35
	.ascii	"Corrupt JPEG data: bad Huffman code"
	.ascii	"                                             "
	.byte	45
	.ascii	"Warning: unknown JFIF revision number %d.%02d"
	.ascii	"                                   "
	.byte	26
	.ascii	"Premature end of JPEG file"
	.ascii	"                                                   "
	.ascii	"   "
	.byte	54
	.ascii	"Corrupt JPEG data: found marker $%02x instead of RS"
	.ascii	"T%d"
	.ascii	"                          "
	.byte	42
	.ascii	"Invalid SOS parameters for sequential JPEG"
	.ascii	"                                      "
	.byte	42
	.ascii	"Application transferred too many scanlines"
	.ascii	"                                      "
	.byte	0
	.ascii	"                                                   "
	.ascii	"                             "
	.byte	31
	.ascii	"Unsupported BMP colormap format"
	.ascii	"                                                 "
	.byte	42
	.ascii	"Only 8- and 24-bit BMP files are supported"
	.ascii	"                                      "
	.byte	35
	.ascii	"Invalid BMP file: bad header length"
	.ascii	"                                             "
	.byte	41
	.ascii	"Invalid BMP file: biPlanes not equal to 1"
	.ascii	"                                       "
	.byte	35
	.ascii	"BMP output must be grayscale or RGB"
	.ascii	"                                             "
	.byte	40
	.ascii	"Sorry, compressed BMPs not yet supported"
	.ascii	"                                        "
	.byte	39
	.ascii	"Not a BMP file - does not start with BM"
	.ascii	"                                         "
	.byte	22
	.ascii	"%dx%d 24-bit BMP image"
	.ascii	"                                                   "
	.ascii	"       "
	.byte	33
	.ascii	"%dx%d 8-bit colormapped BMP image"
	.ascii	"                                               "
	.byte	26
	.ascii	"%dx%d 24-bit OS2 BMP image"
	.ascii	"                                                   "
	.ascii	"   "
	.byte	37
	.ascii	"%dx%d 8-bit colormapped OS2 BMP image"
	.ascii	"                                           "
	.byte	35
	.ascii	"PPM output must be grayscale or RGB"
	.ascii	"                                             "
	.byte	27
	.ascii	"Nonnumeric data in PPM file"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	14
	.ascii	"Not a PPM file"
	.ascii	"                                                   "
	.ascii	"               "
	.byte	15
	.ascii	"%dx%d PGM image"
	.ascii	"                                                   "
	.ascii	"              "
	.byte	20
	.ascii	"%dx%d text PGM image"
	.ascii	"                                                   "
	.ascii	"         "
	.byte	15
	.ascii	"%dx%d PPM image"
	.ascii	"                                                   "
	.ascii	"              "
	.byte	20
	.ascii	"%dx%d text PPM image"
	.ascii	"                                                   "
	.ascii	"         "
	.byte	33
	.ascii	"Unsupported Targa colormap format"
	.ascii	"                                               "
	.byte	33
	.ascii	"Invalid or unsupported Targa file"
	.ascii	"                                               "
	.byte	37
	.ascii	"Targa output must be grayscale or RGB"
	.ascii	"                                           "
	.byte	21
	.ascii	"%dx%d RGB Targa image"
	.ascii	"                                                   "
	.ascii	"        "
	.byte	27
	.ascii	"%dx%d grayscale Targa image"
	.ascii	"                                                   "
	.ascii	"  "
	.byte	29
	.ascii	"%dx%d colormapped Targa image"
	.ascii	"                                                   "
	.byte	50
	.ascii	"Color map file is invalid or of unsupported format"
	.ascii	"                              "
	.byte	52
	.ascii	"Output file format cannot handle %d colormap entrie"
	.ascii	"s"
	.ascii	"                            "
	.byte	13
	.ascii	"ungetc failed"
	.ascii	"                                                   "
	.ascii	"                "
	.byte	58
	.ascii	"Unrecognized input file format --- perhaps you need"
	.ascii	" -targa"
	.ascii	"                      "
	.byte	30
	.ascii	"Unsupported output file format"
	.ascii	"                                                  "
	.byte	0
	.ascii	"                                                   "
	.ascii	"                             "
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_JDEFERR_J_MESSAGE_CODE
_INIT_JDEFERR_J_MESSAGE_CODE:
	.byte	3,14
	.ascii	"J_MESSAGE_CODE"
	.byte	1
	.long	0,155,0
	.byte	14
	.ascii	"JMSG_NOMESSAGE"
	.byte	18
	.ascii	"JERR_ARITH_NOTIMPL"
	.byte	19
	.ascii	"JERR_BAD_ALIGN_TYPE"
	.byte	20
	.ascii	"JERR_BAD_ALLOC_CHUNK"
	.byte	20
	.ascii	"JERR_BAD_BUFFER_MODE"
	.byte	21
	.ascii	"JERR_BAD_COMPONENT_ID"
	.byte	17
	.ascii	"JERR_BAD_DCT_COEF"
	.byte	16
	.ascii	"JERR_BAD_DCTSIZE"
	.byte	19
	.ascii	"JERR_BAD_HUFF_TABLE"
	.byte	22
	.ascii	"JERR_BAD_IN_COLORSPACE"
	.byte	21
	.ascii	"JERR_BAD_J_COLORSPACE"
	.byte	15
	.ascii	"JERR_BAD_LENGTH"
	.byte	20
	.ascii	"JERR_BAD_LIB_VERSION"
	.byte	17
	.ascii	"JERR_BAD_MCU_SIZE"
	.byte	16
	.ascii	"JERR_BAD_POOL_ID"
	.byte	18
	.ascii	"JERR_BAD_PRECISION"
	.byte	20
	.ascii	"JERR_BAD_PROGRESSION"
	.byte	20
	.ascii	"JERR_BAD_PROG_SCRIPT"
	.byte	17
	.ascii	"JERR_BAD_SAMPLING"
	.byte	20
	.ascii	"JERR_BAD_SCAN_SCRIPT"
	.byte	14
	.ascii	"JERR_BAD_STATE"
	.byte	20
	.ascii	"JERR_BAD_STRUCT_SIZE"
	.byte	23
	.ascii	"JERR_BAD_VIRTUAL_ACCESS"
	.byte	16
	.ascii	"JERR_BUFFER_SIZE"
	.byte	17
	.ascii	"JERR_CANT_SUSPEND"
	.byte	20
	.ascii	"JERR_CCIR601_NOTIMPL"
	.byte	20
	.ascii	"JERR_COMPONENT_COUNT"
	.byte	23
	.ascii	"JERR_CONVERSION_NOTIMPL"
	.byte	14
	.ascii	"JERR_DAC_INDEX"
	.byte	14
	.ascii	"JERR_DAC_VALUE"
	.byte	15
	.ascii	"JERR_DHT_COUNTS"
	.byte	14
	.ascii	"JERR_DHT_INDEX"
	.byte	14
	.ascii	"JERR_DQT_INDEX"
	.byte	16
	.ascii	"JERR_EMPTY_IMAGE"
	.byte	13
	.ascii	"JERR_EMS_READ"
	.byte	14
	.ascii	"JERR_EMS_WRITE"
	.byte	17
	.ascii	"JERR_EOI_EXPECTED"
	.byte	14
	.ascii	"JERR_FILE_READ"
	.byte	15
	.ascii	"JERR_FILE_WRITE"
	.byte	25
	.ascii	"JERR_FRACT_SAMPLE_NOTIMPL"
	.byte	23
	.ascii	"JERR_HUFF_CLEN_OVERFLOW"
	.byte	22
	.ascii	"JERR_HUFF_MISSING_CODE"
	.byte	18
	.ascii	"JERR_IMAGE_TOO_BIG"
	.byte	16
	.ascii	"JERR_INPUT_EMPTY"
	.byte	14
	.ascii	"JERR_INPUT_EOF"
	.byte	27
	.ascii	"JERR_MISMATCHED_QUANT_TABLE"
	.byte	17
	.ascii	"JERR_MISSING_DATA"
	.byte	16
	.ascii	"JERR_MODE_CHANGE"
	.byte	12
	.ascii	"JERR_NOTIMPL"
	.byte	17
	.ascii	"JERR_NOT_COMPILED"
	.byte	21
	.ascii	"JERR_NO_BACKING_STORE"
	.byte	18
	.ascii	"JERR_NO_HUFF_TABLE"
	.byte	13
	.ascii	"JERR_NO_IMAGE"
	.byte	19
	.ascii	"JERR_NO_QUANT_TABLE"
	.byte	11
	.ascii	"JERR_NO_SOI"
	.byte	18
	.ascii	"JERR_OUT_OF_MEMORY"
	.byte	21
	.ascii	"JERR_QUANT_COMPONENTS"
	.byte	21
	.ascii	"JERR_QUANT_FEW_COLORS"
	.byte	22
	.ascii	"JERR_QUANT_MANY_COLORS"
	.byte	18
	.ascii	"JERR_SOF_DUPLICATE"
	.byte	15
	.ascii	"JERR_SOF_NO_SOS"
	.byte	20
	.ascii	"JERR_SOF_UNSUPPORTED"
	.byte	18
	.ascii	"JERR_SOI_DUPLICATE"
	.byte	15
	.ascii	"JERR_SOS_NO_SOF"
	.byte	17
	.ascii	"JERR_TFILE_CREATE"
	.byte	15
	.ascii	"JERR_TFILE_READ"
	.byte	15
	.ascii	"JERR_TFILE_SEEK"
	.byte	16
	.ascii	"JERR_TFILE_WRITE"
	.byte	20
	.ascii	"JERR_TOO_LITTLE_DATA"
	.byte	19
	.ascii	"JERR_UNKNOWN_MARKER"
	.byte	16
	.ascii	"JERR_VIRTUAL_BUG"
	.byte	19
	.ascii	"JERR_WIDTH_OVERFLOW"
	.byte	13
	.ascii	"JERR_XMS_READ"
	.byte	14
	.ascii	"JERR_XMS_WRITE"
	.byte	14
	.ascii	"JMSG_COPYRIGHT"
	.byte	12
	.ascii	"JMSG_VERSION"
	.byte	17
	.ascii	"JTRC_16BIT_TABLES"
	.byte	10
	.ascii	"JTRC_ADOBE"
	.byte	9
	.ascii	"JTRC_APP0"
	.byte	10
	.ascii	"JTRC_APP14"
	.byte	8
	.ascii	"JTRC_DAC"
	.byte	8
	.ascii	"JTRC_DHT"
	.byte	8
	.ascii	"JTRC_DQT"
	.byte	8
	.ascii	"JTRC_DRI"
	.byte	14
	.ascii	"JTRC_EMS_CLOSE"
	.byte	13
	.ascii	"JTRC_EMS_OPEN"
	.byte	8
	.ascii	"JTRC_EOI"
	.byte	13
	.ascii	"JTRC_HUFFBITS"
	.byte	9
	.ascii	"JTRC_JFIF"
	.byte	26
	.ascii	"JTRC_JFIF_BADTHUMBNAILSIZE"
	.byte	19
	.ascii	"JTRC_JFIF_EXTENSION"
	.byte	19
	.ascii	"JTRC_JFIF_THUMBNAIL"
	.byte	16
	.ascii	"JTRC_MISC_MARKER"
	.byte	20
	.ascii	"JTRC_PARMLESS_MARKER"
	.byte	14
	.ascii	"JTRC_QUANTVALS"
	.byte	20
	.ascii	"JTRC_QUANT_3_NCOLORS"
	.byte	18
	.ascii	"JTRC_QUANT_NCOLORS"
	.byte	19
	.ascii	"JTRC_QUANT_SELECTED"
	.byte	20
	.ascii	"JTRC_RECOVERY_ACTION"
	.byte	8
	.ascii	"JTRC_RST"
	.byte	19
	.ascii	"JTRC_SMOOTH_NOTIMPL"
	.byte	8
	.ascii	"JTRC_SOF"
	.byte	18
	.ascii	"JTRC_SOF_COMPONENT"
	.byte	8
	.ascii	"JTRC_SOI"
	.byte	8
	.ascii	"JTRC_SOS"
	.byte	18
	.ascii	"JTRC_SOS_COMPONENT"
	.byte	15
	.ascii	"JTRC_SOS_PARAMS"
	.byte	16
	.ascii	"JTRC_TFILE_CLOSE"
	.byte	15
	.ascii	"JTRC_TFILE_OPEN"
	.byte	15
	.ascii	"JTRC_THUMB_JPEG"
	.byte	18
	.ascii	"JTRC_THUMB_PALETTE"
	.byte	14
	.ascii	"JTRC_THUMB_RGB"
	.byte	16
	.ascii	"JTRC_UNKNOWN_IDS"
	.byte	14
	.ascii	"JTRC_XMS_CLOSE"
	.byte	13
	.ascii	"JTRC_XMS_OPEN"
	.byte	16
	.ascii	"JWRN_ADOBE_XFORM"
	.byte	22
	.ascii	"JWRN_BOGUS_PROGRESSION"
	.byte	20
	.ascii	"JWRN_EXTRANEOUS_DATA"
	.byte	15
	.ascii	"JWRN_HIT_MARKER"
	.byte	18
	.ascii	"JWRN_HUFF_BAD_CODE"
	.byte	15
	.ascii	"JWRN_JFIF_MAJOR"
	.byte	13
	.ascii	"JWRN_JPEG_EOF"
	.byte	16
	.ascii	"JWRN_MUST_RESYNC"
	.byte	19
	.ascii	"JWRN_NOT_SEQUENTIAL"
	.byte	18
	.ascii	"JWRN_TOO_MUCH_DATA"
	.byte	19
	.ascii	"JMSG_FIRSTADDONCODE"
	.byte	16
	.ascii	"JERR_BMP_BADCMAP"
	.byte	17
	.ascii	"JERR_BMP_BADDEPTH"
	.byte	18
	.ascii	"JERR_BMP_BADHEADER"
	.byte	18
	.ascii	"JERR_BMP_BADPLANES"
	.byte	19
	.ascii	"JERR_BMP_COLORSPACE"
	.byte	19
	.ascii	"JERR_BMP_COMPRESSED"
	.byte	12
	.ascii	"JERR_BMP_NOT"
	.byte	8
	.ascii	"JTRC_BMP"
	.byte	15
	.ascii	"JTRC_BMP_MAPPED"
	.byte	12
	.ascii	"JTRC_BMP_OS2"
	.byte	19
	.ascii	"JTRC_BMP_OS2_MAPPED"
	.byte	19
	.ascii	"JERR_PPM_COLORSPACE"
	.byte	19
	.ascii	"JERR_PPM_NONNUMERIC"
	.byte	12
	.ascii	"JERR_PPM_NOT"
	.byte	8
	.ascii	"JTRC_PGM"
	.byte	13
	.ascii	"JTRC_PGM_TEXT"
	.byte	8
	.ascii	"JTRC_PPM"
	.byte	13
	.ascii	"JTRC_PPM_TEXT"
	.byte	16
	.ascii	"JERR_TGA_BADCMAP"
	.byte	17
	.ascii	"JERR_TGA_BADPARMS"
	.byte	19
	.ascii	"JERR_TGA_COLORSPACE"
	.byte	8
	.ascii	"JTRC_TGA"
	.byte	13
	.ascii	"JTRC_TGA_GRAY"
	.byte	15
	.ascii	"JTRC_TGA_MAPPED"
	.byte	18
	.ascii	"JERR_BAD_CMAP_FILE"
	.byte	20
	.ascii	"JERR_TOO_MANY_COLORS"
	.byte	18
	.ascii	"JERR_UNGETC_FAILED"
	.byte	19
	.ascii	"JERR_UNKNOWN_FORMAT"
	.byte	23
	.ascii	"JERR_UNSUPPORTED_FORMAT"
	.byte	18
	.ascii	"JMSG_LASTADDONCODE"
	.byte	7
	.ascii	"JdefErr"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_JDEFERR_J_MESSAGE_CODE
_RTTI_JDEFERR_J_MESSAGE_CODE:
	.byte	3,14
	.ascii	"J_MESSAGE_CODE"
	.byte	1
	.long	0,155,0
	.byte	14
	.ascii	"JMSG_NOMESSAGE"
	.byte	18
	.ascii	"JERR_ARITH_NOTIMPL"
	.byte	19
	.ascii	"JERR_BAD_ALIGN_TYPE"
	.byte	20
	.ascii	"JERR_BAD_ALLOC_CHUNK"
	.byte	20
	.ascii	"JERR_BAD_BUFFER_MODE"
	.byte	21
	.ascii	"JERR_BAD_COMPONENT_ID"
	.byte	17
	.ascii	"JERR_BAD_DCT_COEF"
	.byte	16
	.ascii	"JERR_BAD_DCTSIZE"
	.byte	19
	.ascii	"JERR_BAD_HUFF_TABLE"
	.byte	22
	.ascii	"JERR_BAD_IN_COLORSPACE"
	.byte	21
	.ascii	"JERR_BAD_J_COLORSPACE"
	.byte	15
	.ascii	"JERR_BAD_LENGTH"
	.byte	20
	.ascii	"JERR_BAD_LIB_VERSION"
	.byte	17
	.ascii	"JERR_BAD_MCU_SIZE"
	.byte	16
	.ascii	"JERR_BAD_POOL_ID"
	.byte	18
	.ascii	"JERR_BAD_PRECISION"
	.byte	20
	.ascii	"JERR_BAD_PROGRESSION"
	.byte	20
	.ascii	"JERR_BAD_PROG_SCRIPT"
	.byte	17
	.ascii	"JERR_BAD_SAMPLING"
	.byte	20
	.ascii	"JERR_BAD_SCAN_SCRIPT"
	.byte	14
	.ascii	"JERR_BAD_STATE"
	.byte	20
	.ascii	"JERR_BAD_STRUCT_SIZE"
	.byte	23
	.ascii	"JERR_BAD_VIRTUAL_ACCESS"
	.byte	16
	.ascii	"JERR_BUFFER_SIZE"
	.byte	17
	.ascii	"JERR_CANT_SUSPEND"
	.byte	20
	.ascii	"JERR_CCIR601_NOTIMPL"
	.byte	20
	.ascii	"JERR_COMPONENT_COUNT"
	.byte	23
	.ascii	"JERR_CONVERSION_NOTIMPL"
	.byte	14
	.ascii	"JERR_DAC_INDEX"
	.byte	14
	.ascii	"JERR_DAC_VALUE"
	.byte	15
	.ascii	"JERR_DHT_COUNTS"
	.byte	14
	.ascii	"JERR_DHT_INDEX"
	.byte	14
	.ascii	"JERR_DQT_INDEX"
	.byte	16
	.ascii	"JERR_EMPTY_IMAGE"
	.byte	13
	.ascii	"JERR_EMS_READ"
	.byte	14
	.ascii	"JERR_EMS_WRITE"
	.byte	17
	.ascii	"JERR_EOI_EXPECTED"
	.byte	14
	.ascii	"JERR_FILE_READ"
	.byte	15
	.ascii	"JERR_FILE_WRITE"
	.byte	25
	.ascii	"JERR_FRACT_SAMPLE_NOTIMPL"
	.byte	23
	.ascii	"JERR_HUFF_CLEN_OVERFLOW"
	.byte	22
	.ascii	"JERR_HUFF_MISSING_CODE"
	.byte	18
	.ascii	"JERR_IMAGE_TOO_BIG"
	.byte	16
	.ascii	"JERR_INPUT_EMPTY"
	.byte	14
	.ascii	"JERR_INPUT_EOF"
	.byte	27
	.ascii	"JERR_MISMATCHED_QUANT_TABLE"
	.byte	17
	.ascii	"JERR_MISSING_DATA"
	.byte	16
	.ascii	"JERR_MODE_CHANGE"
	.byte	12
	.ascii	"JERR_NOTIMPL"
	.byte	17
	.ascii	"JERR_NOT_COMPILED"
	.byte	21
	.ascii	"JERR_NO_BACKING_STORE"
	.byte	18
	.ascii	"JERR_NO_HUFF_TABLE"
	.byte	13
	.ascii	"JERR_NO_IMAGE"
	.byte	19
	.ascii	"JERR_NO_QUANT_TABLE"
	.byte	11
	.ascii	"JERR_NO_SOI"
	.byte	18
	.ascii	"JERR_OUT_OF_MEMORY"
	.byte	21
	.ascii	"JERR_QUANT_COMPONENTS"
	.byte	21
	.ascii	"JERR_QUANT_FEW_COLORS"
	.byte	22
	.ascii	"JERR_QUANT_MANY_COLORS"
	.byte	18
	.ascii	"JERR_SOF_DUPLICATE"
	.byte	15
	.ascii	"JERR_SOF_NO_SOS"
	.byte	20
	.ascii	"JERR_SOF_UNSUPPORTED"
	.byte	18
	.ascii	"JERR_SOI_DUPLICATE"
	.byte	15
	.ascii	"JERR_SOS_NO_SOF"
	.byte	17
	.ascii	"JERR_TFILE_CREATE"
	.byte	15
	.ascii	"JERR_TFILE_READ"
	.byte	15
	.ascii	"JERR_TFILE_SEEK"
	.byte	16
	.ascii	"JERR_TFILE_WRITE"
	.byte	20
	.ascii	"JERR_TOO_LITTLE_DATA"
	.byte	19
	.ascii	"JERR_UNKNOWN_MARKER"
	.byte	16
	.ascii	"JERR_VIRTUAL_BUG"
	.byte	19
	.ascii	"JERR_WIDTH_OVERFLOW"
	.byte	13
	.ascii	"JERR_XMS_READ"
	.byte	14
	.ascii	"JERR_XMS_WRITE"
	.byte	14
	.ascii	"JMSG_COPYRIGHT"
	.byte	12
	.ascii	"JMSG_VERSION"
	.byte	17
	.ascii	"JTRC_16BIT_TABLES"
	.byte	10
	.ascii	"JTRC_ADOBE"
	.byte	9
	.ascii	"JTRC_APP0"
	.byte	10
	.ascii	"JTRC_APP14"
	.byte	8
	.ascii	"JTRC_DAC"
	.byte	8
	.ascii	"JTRC_DHT"
	.byte	8
	.ascii	"JTRC_DQT"
	.byte	8
	.ascii	"JTRC_DRI"
	.byte	14
	.ascii	"JTRC_EMS_CLOSE"
	.byte	13
	.ascii	"JTRC_EMS_OPEN"
	.byte	8
	.ascii	"JTRC_EOI"
	.byte	13
	.ascii	"JTRC_HUFFBITS"
	.byte	9
	.ascii	"JTRC_JFIF"
	.byte	26
	.ascii	"JTRC_JFIF_BADTHUMBNAILSIZE"
	.byte	19
	.ascii	"JTRC_JFIF_EXTENSION"
	.byte	19
	.ascii	"JTRC_JFIF_THUMBNAIL"
	.byte	16
	.ascii	"JTRC_MISC_MARKER"
	.byte	20
	.ascii	"JTRC_PARMLESS_MARKER"
	.byte	14
	.ascii	"JTRC_QUANTVALS"
	.byte	20
	.ascii	"JTRC_QUANT_3_NCOLORS"
	.byte	18
	.ascii	"JTRC_QUANT_NCOLORS"
	.byte	19
	.ascii	"JTRC_QUANT_SELECTED"
	.byte	20
	.ascii	"JTRC_RECOVERY_ACTION"
	.byte	8
	.ascii	"JTRC_RST"
	.byte	19
	.ascii	"JTRC_SMOOTH_NOTIMPL"
	.byte	8
	.ascii	"JTRC_SOF"
	.byte	18
	.ascii	"JTRC_SOF_COMPONENT"
	.byte	8
	.ascii	"JTRC_SOI"
	.byte	8
	.ascii	"JTRC_SOS"
	.byte	18
	.ascii	"JTRC_SOS_COMPONENT"
	.byte	15
	.ascii	"JTRC_SOS_PARAMS"
	.byte	16
	.ascii	"JTRC_TFILE_CLOSE"
	.byte	15
	.ascii	"JTRC_TFILE_OPEN"
	.byte	15
	.ascii	"JTRC_THUMB_JPEG"
	.byte	18
	.ascii	"JTRC_THUMB_PALETTE"
	.byte	14
	.ascii	"JTRC_THUMB_RGB"
	.byte	16
	.ascii	"JTRC_UNKNOWN_IDS"
	.byte	14
	.ascii	"JTRC_XMS_CLOSE"
	.byte	13
	.ascii	"JTRC_XMS_OPEN"
	.byte	16
	.ascii	"JWRN_ADOBE_XFORM"
	.byte	22
	.ascii	"JWRN_BOGUS_PROGRESSION"
	.byte	20
	.ascii	"JWRN_EXTRANEOUS_DATA"
	.byte	15
	.ascii	"JWRN_HIT_MARKER"
	.byte	18
	.ascii	"JWRN_HUFF_BAD_CODE"
	.byte	15
	.ascii	"JWRN_JFIF_MAJOR"
	.byte	13
	.ascii	"JWRN_JPEG_EOF"
	.byte	16
	.ascii	"JWRN_MUST_RESYNC"
	.byte	19
	.ascii	"JWRN_NOT_SEQUENTIAL"
	.byte	18
	.ascii	"JWRN_TOO_MUCH_DATA"
	.byte	19
	.ascii	"JMSG_FIRSTADDONCODE"
	.byte	16
	.ascii	"JERR_BMP_BADCMAP"
	.byte	17
	.ascii	"JERR_BMP_BADDEPTH"
	.byte	18
	.ascii	"JERR_BMP_BADHEADER"
	.byte	18
	.ascii	"JERR_BMP_BADPLANES"
	.byte	19
	.ascii	"JERR_BMP_COLORSPACE"
	.byte	19
	.ascii	"JERR_BMP_COMPRESSED"
	.byte	12
	.ascii	"JERR_BMP_NOT"
	.byte	8
	.ascii	"JTRC_BMP"
	.byte	15
	.ascii	"JTRC_BMP_MAPPED"
	.byte	12
	.ascii	"JTRC_BMP_OS2"
	.byte	19
	.ascii	"JTRC_BMP_OS2_MAPPED"
	.byte	19
	.ascii	"JERR_PPM_COLORSPACE"
	.byte	19
	.ascii	"JERR_PPM_NONNUMERIC"
	.byte	12
	.ascii	"JERR_PPM_NOT"
	.byte	8
	.ascii	"JTRC_PGM"
	.byte	13
	.ascii	"JTRC_PGM_TEXT"
	.byte	8
	.ascii	"JTRC_PPM"
	.byte	13
	.ascii	"JTRC_PPM_TEXT"
	.byte	16
	.ascii	"JERR_TGA_BADCMAP"
	.byte	17
	.ascii	"JERR_TGA_BADPARMS"
	.byte	19
	.ascii	"JERR_TGA_COLORSPACE"
	.byte	8
	.ascii	"JTRC_TGA"
	.byte	13
	.ascii	"JTRC_TGA_GRAY"
	.byte	15
	.ascii	"JTRC_TGA_MAPPED"
	.byte	18
	.ascii	"JERR_BAD_CMAP_FILE"
	.byte	20
	.ascii	"JERR_TOO_MANY_COLORS"
	.byte	18
	.ascii	"JERR_UNGETC_FAILED"
	.byte	19
	.ascii	"JERR_UNKNOWN_FORMAT"
	.byte	23
	.ascii	"JERR_UNSUPPORTED_FORMAT"
	.byte	18
	.ascii	"JMSG_LASTADDONCODE"
	.byte	7
	.ascii	"JdefErr"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_JDEFERR_J_MESSAGE_CODE_s2o
_RTTI_JDEFERR_J_MESSAGE_CODE_s2o:
	.long	156,1
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+44
	.long	2
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+63
	.long	3
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+83
	.long	4
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+104
	.long	150
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2602
	.long	5
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+125
	.long	7
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+165
	.long	6
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+147
	.long	8
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+182
	.long	9
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+202
	.long	10
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+225
	.long	11
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+247
	.long	12
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+263
	.long	13
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+284
	.long	14
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+302
	.long	15
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+319
	.long	16
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+338
	.long	17
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+359
	.long	18
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+380
	.long	19
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+398
	.long	20
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+419
	.long	21
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+434
	.long	22
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+455
	.long	126
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2225
	.long	127
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2242
	.long	128
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2260
	.long	129
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2279
	.long	130
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2298
	.long	131
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2318
	.long	132
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2338
	.long	23
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+479
	.long	24
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+496
	.long	25
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+514
	.long	26
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+535
	.long	27
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+556
	.long	28
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+580
	.long	29
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+595
	.long	30
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+610
	.long	31
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+626
	.long	32
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+641
	.long	33
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+656
	.long	34
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+673
	.long	35
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+687
	.long	36
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+702
	.long	37
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+720
	.long	38
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+735
	.long	39
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+751
	.long	40
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+777
	.long	41
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+801
	.long	42
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+824
	.long	43
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+843
	.long	44
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+860
	.long	45
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+875
	.long	46
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+903
	.long	47
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+921
	.long	48
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+938
	.long	49
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+951
	.long	50
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+969
	.long	51
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+991
	.long	52
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1010
	.long	53
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1024
	.long	54
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1044
	.long	55
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1056
	.long	137
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2409
	.long	138
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2429
	.long	139
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2449
	.long	56
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1075
	.long	57
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1097
	.long	58
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1119
	.long	59
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1142
	.long	60
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1161
	.long	61
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1177
	.long	62
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1198
	.long	63
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1217
	.long	64
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1233
	.long	65
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1251
	.long	66
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1267
	.long	67
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1283
	.long	144
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2508
	.long	145
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2525
	.long	146
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2543
	.long	68
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1300
	.long	151
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2621
	.long	152
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2642
	.long	153
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2661
	.long	69
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1321
	.long	154
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2681
	.long	70
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1341
	.long	71
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1358
	.long	72
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1378
	.long	73
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1392
	.long	74
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1407
	.long	125
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2205
	.long	155
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2705
	.long	0
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+29
	.long	75
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1422
	.long	76
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1435
	.long	77
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1453
	.long	78
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1464
	.long	79
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1474
	.long	133
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2351
	.long	134
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2360
	.long	135
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2376
	.long	136
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2389
	.long	80
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1485
	.long	81
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1494
	.long	82
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1503
	.long	83
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1512
	.long	84
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1521
	.long	85
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1536
	.long	86
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1550
	.long	87
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1559
	.long	88
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1573
	.long	89
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1583
	.long	90
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1610
	.long	91
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1630
	.long	92
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1650
	.long	93
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1667
	.long	140
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2462
	.long	141
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2471
	.long	142
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2485
	.long	143
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2494
	.long	94
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1688
	.long	95
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1703
	.long	96
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1724
	.long	97
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1743
	.long	98
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1763
	.long	99
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1784
	.long	100
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1793
	.long	101
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1813
	.long	102
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1822
	.long	103
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1841
	.long	104
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1850
	.long	105
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1859
	.long	106
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1878
	.long	107
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1894
	.long	108
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1911
	.long	147
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2563
	.long	148
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2572
	.long	149
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2586
	.long	109
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1927
	.long	110
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1943
	.long	111
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1962
	.long	112
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1977
	.long	113
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1994
	.long	114
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2009
	.long	115
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2023
	.long	116
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2040
	.long	117
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2063
	.long	118
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2084
	.long	119
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2100
	.long	120
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2119
	.long	121
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2135
	.long	122
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2149
	.long	123
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2166
	.long	124
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2186

.const_data
	.align 2
.globl	_RTTI_JDEFERR_J_MESSAGE_CODE_o2s
_RTTI_JDEFERR_J_MESSAGE_CODE_o2s:
	.long	0
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+29
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+44
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+63
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+83
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+104
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+125
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+147
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+165
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+182
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+202
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+225
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+247
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+263
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+284
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+302
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+319
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+338
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+359
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+380
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+398
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+419
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+434
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+455
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+479
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+496
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+514
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+535
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+556
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+580
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+595
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+610
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+626
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+641
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+656
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+673
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+687
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+702
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+720
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+735
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+751
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+777
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+801
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+824
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+843
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+860
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+875
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+903
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+921
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+938
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+951
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+969
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+991
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1010
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1024
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1044
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1056
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1075
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1097
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1119
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1142
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1161
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1177
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1198
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1217
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1233
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1251
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1267
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1283
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1300
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1321
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1341
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1358
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1378
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1392
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1407
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1422
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1435
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1453
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1464
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1474
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1485
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1494
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1503
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1512
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1521
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1536
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1550
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1559
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1573
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1583
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1610
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1630
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1650
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1667
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1688
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1703
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1724
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1743
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1763
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1784
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1793
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1813
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1822
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1841
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1850
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1859
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1878
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1894
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1911
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1927
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1943
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1962
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1977
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+1994
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2009
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2023
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2040
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2063
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2084
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2100
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2119
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2135
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2149
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2166
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2186
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2205
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2225
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2242
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2260
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2279
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2298
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2318
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2338
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2351
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2360
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2376
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2389
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2409
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2429
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2449
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2462
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2471
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2485
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2494
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2508
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2525
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2543
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2563
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2572
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2586
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2602
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2621
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2642
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2661
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2681
	.long	_RTTI_JDEFERR_J_MESSAGE_CODE+2705

.const_data
	.align 2
.globl	_INIT_JDEFERR_DEF5
_INIT_JDEFERR_DEF5:
	.byte	7
	.ascii	"\000"
	.byte	80

.const_data
	.align 2
.globl	_INIT_JDEFERR_MSG_TABLE
_INIT_JDEFERR_MSG_TABLE:
	.byte	12
	.ascii	"\011msg_table"
	.long	81,156
	.long	_INIT_JDEFERR_DEF5
	.long	-1

.const_data
	.align 2
.globl	_RTTI_JDEFERR_DEF5
_RTTI_JDEFERR_DEF5:
	.byte	7
	.ascii	"\000"
	.byte	80

.const_data
	.align 2
.globl	_RTTI_JDEFERR_MSG_TABLE
_RTTI_JDEFERR_MSG_TABLE:
	.byte	12
	.ascii	"\011msg_table"
	.long	81,156
	.long	_RTTI_JDEFERR_DEF5
	.long	-1
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

