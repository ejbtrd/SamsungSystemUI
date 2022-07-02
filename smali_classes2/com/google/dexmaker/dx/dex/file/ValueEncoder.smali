.class public final Lcom/google/dexmaker/dx/dex/file/ValueEncoder;
.super Ljava/lang/Object;
.source "ValueEncoder.java"


# instance fields
.field private final file:Lcom/google/dexmaker/dx/dex/file/DexFile;

.field private final out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file == null"

    .line 110
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "out == null"

    .line 114
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    .line 118
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    return-void
.end method

.method public static addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/rop/annotation/Annotation;)V
    .locals 0

    .line 493
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    .line 494
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    const/4 p0, 0x0

    .line 496
    throw p0
.end method

.method public static addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 3

    .line 515
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_0

    .line 516
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/rop/annotation/Annotation;)V

    goto :goto_1

    .line 517
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    if-eqz v0, :cond_1

    .line 518
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstArray;->getList()Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 521
    invoke-virtual {p1, v1}, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;->get(I)Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->internIfAppropriate(Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static constantToHuman(Lcom/google/dexmaker/dx/rop/cst/Constant;)Ljava/lang/String;
    .locals 2

    .line 366
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {p0}, Lcom/google/dexmaker/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static constantToValueType(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 1

    .line 219
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstByte;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 221
    :cond_0
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstShort;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 223
    :cond_1
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstChar;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 225
    :cond_2
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 227
    :cond_3
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstLong;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    .line 229
    :cond_4
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstFloat;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    .line 231
    :cond_5
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    .line 233
    :cond_6
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-eqz v0, :cond_7

    const/16 p0, 0x17

    return p0

    .line 235
    :cond_7
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-eqz v0, :cond_8

    const/16 p0, 0x18

    return p0

    .line 237
    :cond_8
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_9

    const/16 p0, 0x19

    return p0

    .line 239
    :cond_9
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    if-eqz v0, :cond_a

    const/16 p0, 0x1a

    return p0

    .line 241
    :cond_a
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_b

    const/16 p0, 0x1b

    return p0

    .line 243
    :cond_b
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    if-eqz v0, :cond_c

    const/16 p0, 0x1c

    return p0

    .line 245
    :cond_c
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    if-eqz v0, :cond_d

    const/16 p0, 0x1d

    return p0

    .line 247
    :cond_d
    instance-of v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;

    if-eqz v0, :cond_e

    const/16 p0, 0x1e

    return p0

    .line 249
    :cond_e
    instance-of p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstBoolean;

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    return p0

    .line 252
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeRightZeroExtendedValue(IJ)V
    .locals 3

    .line 458
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    .line 473
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    .line 477
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeSignedIntegralValue(IJ)V
    .locals 3

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 408
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_0

    .line 412
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeUnsignedIntegralValue(IJ)V
    .locals 3

    .line 427
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 439
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    :goto_0
    if-lez v0, :cond_1

    .line 443
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public writeAnnotation(Lcom/google/dexmaker/dx/rop/annotation/Annotation;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 308
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result p1

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    .line 310
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    const/4 p0, 0x0

    .line 312
    throw p0
.end method

.method public writeArray(Lcom/google/dexmaker/dx/rop/cst/CstArray;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 270
    iget-object p2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstArray;->getList()Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    if-eqz p2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {v2, v1}, Lcom/google/dexmaker/dx/util/Output;->writeUleb128(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    .line 281
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;->get(I)Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 283
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/google/dexmaker/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 286
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeConstant(Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 290
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_4
    return-void
.end method

.method public writeConstant(Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 3

    .line 127
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->constantToValueType(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :pswitch_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstBoolean;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p1

    .line 198
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    goto/16 :goto_0

    .line 193
    :pswitch_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {p0, v0}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    goto/16 :goto_0

    .line 187
    :pswitch_2
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    .line 188
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;->getAnnotation()Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/google/dexmaker/dx/rop/annotation/Annotation;Z)V

    goto/16 :goto_0

    .line 182
    :pswitch_3
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->out:Lcom/google/dexmaker/dx/util/AnnotatedOutput;

    invoke-interface {v2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeByte(I)V

    .line 183
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    invoke-virtual {p0, p1, v1}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeArray(Lcom/google/dexmaker/dx/rop/cst/CstArray;Z)V

    goto/16 :goto_0

    .line 176
    :pswitch_4
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getFieldIds()Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)I

    move-result p1

    int-to-long v1, p1

    .line 178
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getMethodIds()Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    move-result-object v1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    int-to-long v1, p1

    .line 172
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 166
    :pswitch_6
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getFieldIds()Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    move-result-object v1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)I

    move-result p1

    int-to-long v1, p1

    .line 167
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 161
    :pswitch_7
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    move-result-object v1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstType;)I

    move-result p1

    int-to-long v1, p1

    .line 162
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 156
    :pswitch_8
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object v1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstString;)I

    move-result p1

    int-to-long v1, p1

    .line 157
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 151
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v1

    .line 152
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    goto :goto_0

    .line 146
    :cond_1
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstFloat;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getLongBits()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    .line 147
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeRightZeroExtendedValue(IJ)V

    goto :goto_0

    .line 140
    :cond_2
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 141
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeUnsignedIntegralValue(IJ)V

    goto :goto_0

    .line 135
    :cond_3
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    .line 136
    invoke-direct {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeSignedIntegralValue(IJ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
