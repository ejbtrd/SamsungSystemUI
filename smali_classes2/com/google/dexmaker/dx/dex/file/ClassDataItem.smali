.class public final Lcom/google/dexmaker/dx/dex/file/ClassDataItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "ClassDataItem.java"


# instance fields
.field private final directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/dexmaker/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field

.field private encodedForm:[B

.field private final instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/dexmaker/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/dexmaker/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/dexmaker/dx/dex/file/EncodedField;",
            "Lcom/google/dexmaker/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

.field private final thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field private final virtualMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/dexmaker/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;-><init>(II)V

    const-string/jumbo v0, "thisClass == null"

    .line 79
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

    return-void
.end method

.method private static encodeList(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/dx/dex/file/DexFile;",
            "Lcom/google/dexmaker/dx/util/AnnotatedOutput;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/google/dexmaker/dx/dex/file/EncodedMember;",
            ">;)V"
        }
    .end annotation

    .line 394
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :cond_1
    move p2, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 406
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/EncodedMember;

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/google/dexmaker/dx/dex/file/EncodedMember;->encode(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private encodeOutput(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 6

    .line 341
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "static_fields"

    invoke-static {p1, p2, v2, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeSize(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 349
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "instance_fields"

    invoke-static {p1, p2, v3, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeSize(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 350
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, "direct_methods"

    invoke-static {p1, p2, v4, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeSize(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 351
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v5, "virtual_methods"

    invoke-static {p1, p2, v5, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeSize(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 353
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v2, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeList(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 354
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v3, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeList(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v4, v1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeList(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5, p0}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeList(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_1
    return-void
.end method

.method private static encodeSize(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;I)V
    .locals 2

    .line 374
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_size:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const-string p2, "  %-21s %08x"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-interface {p1, p3}, Lcom/google/dexmaker/dx/util/Output;->writeUleb128(I)I

    return-void
.end method

.method private makeStaticValuesConstant()Lcom/google/dexmaker/dx/rop/cst/CstArray;
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    .line 290
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/rop/cst/Constant;

    .line 291
    instance-of v2, v1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_3
    new-instance v1, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 310
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    .line 311
    iget-object v4, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/dexmaker/dx/rop/cst/Constant;

    if-nez v4, :cond_4

    .line 313
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/EncodedField;->getRef()Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/cst/Zeroes;->zeroFor(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v4

    .line 315
    :cond_4
    invoke-virtual {v1, v2, v4}, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;->set(ILcom/google/dexmaker/dx/rop/cst/Constant;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 317
    :cond_5
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    .line 319
    new-instance p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    invoke-direct {p0, v1}, Lcom/google/dexmaker/dx/rop/cst/CstArray;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstArray$List;)V

    return-object p0
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/google/dexmaker/dx/rop/cst/CstArray;

    .line 229
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    .line 230
    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedField;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    .line 237
    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedField;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    goto :goto_1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/EncodedMethod;

    .line 244
    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedMethod;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    goto :goto_2

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 250
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/EncodedMethod;

    .line 251
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedMethod;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public addDirectMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V
    .locals 1

    const-string/jumbo v0, "method == null"

    .line 154
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInstanceField(Lcom/google/dexmaker/dx/dex/file/EncodedField;)V
    .locals 1

    const-string v0, "field == null"

    .line 141
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStaticField(Lcom/google/dexmaker/dx/dex/file/EncodedField;Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 1

    const-string v0, "field == null"

    .line 122
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "static fields already sorted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addVirtualMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V
    .locals 1

    const-string/jumbo v0, "method == null"

    .line 167
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getStaticValuesConstant()Lcom/google/dexmaker/dx/rop/cst/CstArray;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->makeStaticValuesConstant()Lcom/google/dexmaker/dx/rop/cst/CstArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/google/dexmaker/dx/rop/cst/CstArray;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 94
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method protected place0(Lcom/google/dexmaker/dx/dex/file/Section;I)V
    .locals 0

    .line 327
    new-instance p2, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 329
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/Section;->getFile()Lcom/google/dexmaker/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    .line 330
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodedForm:[B

    .line 331
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 1

    .line 413
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->encodedForm:[B

    invoke-interface {p2, p0}, Lcom/google/dexmaker/dx/util/Output;->write([B)V

    :goto_0
    return-void
.end method
