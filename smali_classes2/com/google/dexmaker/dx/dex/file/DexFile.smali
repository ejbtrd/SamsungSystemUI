.class public final Lcom/google/dexmaker/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# instance fields
.field private final byteData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

.field private final classData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

.field private dexOptions:Lcom/google/dexmaker/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/google/dexmaker/dx/dex/file/HeaderSection;

.field private final map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

.field private final methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/google/dexmaker/dx/dex/file/Section;

.field private final stringData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/DexOptions;)V
    .locals 17

    move-object/from16 v0, p0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 112
    iput-object v1, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->dexOptions:Lcom/google/dexmaker/dx/dex/DexOptions;

    .line 114
    new-instance v1, Lcom/google/dexmaker/dx/dex/file/HeaderSection;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/dex/file/HeaderSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v1, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->header:Lcom/google/dexmaker/dx/dex/file/HeaderSection;

    .line 115
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    sget-object v3, Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v4, v0, v5, v3}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v2, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeLists:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    .line 116
    new-instance v6, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    sget-object v7, Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;

    const-string/jumbo v8, "word_data"

    invoke-direct {v6, v8, v0, v5, v7}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v6, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    .line 117
    new-instance v8, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    sget-object v9, Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;

    const-string/jumbo v10, "string_data"

    const/4 v11, 0x1

    invoke-direct {v8, v10, v0, v11, v9}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v8, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    .line 119
    new-instance v9, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-direct {v9, v4, v0, v11, v3}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v9, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    .line 120
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    const-string v10, "byte_data"

    invoke-direct {v4, v10, v0, v11, v7}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v4, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->byteData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    .line 121
    new-instance v7, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    invoke-direct {v7, v0}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v7, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    .line 122
    new-instance v10, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    invoke-direct {v10, v0}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v10, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    .line 123
    new-instance v12, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    invoke-direct {v12, v0}, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v12, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->protoIds:Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    .line 124
    new-instance v13, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    invoke-direct {v13, v0}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v13, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    .line 125
    new-instance v14, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    invoke-direct {v14, v0}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v14, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    .line 126
    new-instance v15, Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

    invoke-direct {v15, v0}, Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    iput-object v15, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classDefs:Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

    .line 127
    new-instance v11, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-object/from16 v16, v9

    const-string/jumbo v9, "map"

    invoke-direct {v11, v9, v0, v5, v3}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;ILcom/google/dexmaker/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v11, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    const/16 v3, 0xd

    new-array v3, v3, [Lcom/google/dexmaker/dx/dex/file/Section;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v7, v3, v1

    const/4 v1, 0x2

    aput-object v10, v3, v1

    const/4 v1, 0x3

    aput-object v12, v3, v1

    aput-object v13, v3, v5

    const/4 v1, 0x5

    aput-object v14, v3, v1

    const/4 v1, 0x6

    aput-object v15, v3, v1

    const/4 v1, 0x7

    aput-object v6, v3, v1

    const/16 v1, 0x8

    aput-object v2, v3, v1

    const/16 v1, 0x9

    aput-object v8, v3, v1

    const/16 v1, 0xa

    aput-object v4, v3, v1

    const/16 v1, 0xb

    aput-object v16, v3, v1

    const/16 v1, 0xc

    aput-object v11, v3, v1

    .line 133
    iput-object v3, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    const/4 v1, -0x1

    .line 138
    iput v1, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fileSize:I

    const/16 v1, 0x4f

    .line 139
    iput v1, v0, Lcom/google/dexmaker/dx/dex/file/DexFile;->dumpWidth:I

    return-void
.end method

.method private static calcChecksum([B)V
    .locals 3

    .line 654
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 656
    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 658
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v1, v0

    const/16 v2, 0x8

    .line 660
    aput-byte v1, p0, v2

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x9

    .line 661
    aput-byte v1, p0, v2

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    const/16 v2, 0xa

    .line 662
    aput-byte v1, p0, v2

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 663
    aput-byte v0, p0, v1

    return-void
.end method

.method private static calcSignature([B)V
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 629
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    .line 637
    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v2, :cond_0

    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected digest write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 643
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 631
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private toDex0(ZZ)Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;
    .locals 8

    .line 502
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classDefs:Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 503
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 504
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 505
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->byteData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 506
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 507
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 508
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->protoIds:Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 509
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeLists:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 510
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 511
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 512
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 513
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->header:Lcom/google/dexmaker/dx/dex/file/HeaderSection;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 517
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_3

    .line 521
    iget-object v5, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    aget-object v5, v5, v2

    .line 522
    invoke-virtual {v5, v3}, Lcom/google/dexmaker/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    if-lt v6, v3, :cond_2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    if-ne v5, v3, :cond_0

    .line 534
    iget-object v7, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    invoke-static {v7, v3}, Lcom/google/dexmaker/dx/dex/file/MapItem;->addMap([Lcom/google/dexmaker/dx/dex/file/Section;Lcom/google/dexmaker/dx/dex/file/MixedItemSection;)V

    .line 535
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare()V

    .line 538
    :cond_0
    instance-of v3, v5, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    if-eqz v3, :cond_1

    .line 543
    move-object v3, v5

    check-cast v3, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->placeItems()V

    .line 546
    :cond_1
    invoke-virtual {v5}, Lcom/google/dexmaker/dx/dex/file/Section;->writeSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/dexmaker/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/google/dexmaker/dx/util/ExceptionWithContext;

    move-result-object p0

    throw p0

    .line 524
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bogus placement for section "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 555
    :cond_3
    iput v3, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fileSize:I

    .line 556
    new-array v2, v3, [B

    .line 557
    new-instance v3, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v3, v2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    if-eqz p1, :cond_4

    .line 560
    iget v5, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v3, v5, p2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    :cond_4
    :goto_1
    if-ge v1, v0, :cond_7

    .line 565
    :try_start_1
    iget-object p2, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    aget-object p2, p2, v1

    .line 566
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/file/Section;->getFileOffset()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v5, :cond_5

    .line 571
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/file/Section;->getFileOffset()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    .line 572
    invoke-virtual {p2, v3}, Lcom/google/dexmaker/dx/dex/file/Section;->writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    :cond_5
    new-instance p0, Lcom/google/dexmaker/dx/util/ExceptionWithContext;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "excess write of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 575
    instance-of p1, p0, Lcom/google/dexmaker/dx/util/ExceptionWithContext;

    if-eqz p1, :cond_6

    .line 576
    check-cast p0, Lcom/google/dexmaker/dx/util/ExceptionWithContext;

    goto :goto_2

    .line 578
    :cond_6
    new-instance p1, Lcom/google/dexmaker/dx/util/ExceptionWithContext;

    invoke-direct {p1, p0}, Lcom/google/dexmaker/dx/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 580
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 581
    throw p0

    .line 585
    :cond_7
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p2

    iget v0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fileSize:I

    if-ne p2, v0, :cond_9

    .line 591
    invoke-static {v2}, Lcom/google/dexmaker/dx/dex/file/DexFile;->calcSignature([B)V

    .line 592
    invoke-static {v2}, Lcom/google/dexmaker/dx/dex/file/DexFile;->calcChecksum([B)V

    if-eqz p1, :cond_8

    .line 595
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    sget-object p2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v0, "\nmethod code index:\n\n"

    invoke-virtual {p1, v3, p2, v0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/file/ItemType;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStatistics()Lcom/google/dexmaker/dx/dex/file/Statistics;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/file/Statistics;->writeAnnotation(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    .line 598
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    :cond_8
    return-object v3

    .line 586
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "foreshortened write"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lcom/google/dexmaker/dx/dex/file/ClassDefItem;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classDefs:Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;->add(Lcom/google/dexmaker/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.method findItemOrNull(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;
    .locals 1

    .line 473
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->get(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;

    move-result-object p0

    return-object p0

    .line 475
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 476
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->get(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;

    move-result-object p0

    return-object p0

    .line 477
    :cond_1
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 478
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;->get(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;

    move-result-object p0

    return-object p0

    .line 479
    :cond_2
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 480
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->get(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method getByteData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->byteData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getClassData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getClassDefs()Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->classDefs:Lcom/google/dexmaker/dx/dex/file/ClassDefsSection;

    return-object p0
.end method

.method public getDexOptions()Lcom/google/dexmaker/dx/dex/DexOptions;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->dexOptions:Lcom/google/dexmaker/dx/dex/DexOptions;

    return-object p0
.end method

.method getFieldIds()Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    return-object p0
.end method

.method getFileSize()I
    .locals 1

    .line 248
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fileSize:I

    if-ltz p0, :cond_0

    return p0

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "file size not yet known"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getFirstDataSection()Lcom/google/dexmaker/dx/dex/file/Section;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getLastDataSection()Lcom/google/dexmaker/dx/dex/file/Section;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getMap()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->map:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getMethodIds()Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    return-object p0
.end method

.method getProtoIds()Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->protoIds:Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    return-object p0
.end method

.method public getStatistics()Lcom/google/dexmaker/dx/dex/file/Statistics;
    .locals 4

    .line 610
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/Statistics;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/file/Statistics;-><init>()V

    .line 612
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->sections:[Lcom/google/dexmaker/dx/dex/file/Section;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 613
    invoke-virtual {v0, v3}, Lcom/google/dexmaker/dx/dex/file/Statistics;->addAll(Lcom/google/dexmaker/dx/dex/file/Section;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getStringData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    return-object p0
.end method

.method getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    return-object p0
.end method

.method getTypeLists()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeLists:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method getWordData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->wordData:Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    return-object p0
.end method

.method internIfAppropriate(Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 1

    .line 444
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 445
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->stringIds:Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstString;)Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    goto :goto_0

    .line 446
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 447
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->typeIds:Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstType;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    goto :goto_0

    .line 448
    :cond_1
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 449
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->methodIds:Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;)Lcom/google/dexmaker/dx/dex/file/MethodIdItem;

    goto :goto_0

    .line 450
    :cond_2
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 451
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 452
    :cond_3
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_4

    .line 453
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/DexFile;->fieldIds:Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    goto :goto_0

    :cond_4
    const-string p0, "cst == null"

    .line 455
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/dexmaker/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object p0

    return-object p0
.end method
