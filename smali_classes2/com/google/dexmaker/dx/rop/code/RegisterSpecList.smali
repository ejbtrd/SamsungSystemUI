.class public final Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "RegisterSpecList.java"

# interfaces
.implements Lcom/google/dexmaker/dx/rop/type/TypeList;


# static fields
.field public static final EMPTY:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 2

    .line 40
    new-instance v0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 2

    .line 54
    new-instance v0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    const/4 p0, 0x1

    .line 56
    invoke-virtual {v0, p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public static make(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 2

    .line 70
    new-instance v0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1, p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    const/4 p0, 0x1

    .line 72
    invoke-virtual {v0, p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    const/4 p0, 0x2

    .line 73
    invoke-virtual {v0, p0, p2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    return-object p0
.end method

.method public getType(I)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public getWordCount()I
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->getType(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public subset(Ljava/util/BitSet;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 305
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 308
    sget-object p0, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    return-object p0

    .line 311
    :cond_0
    new-instance v1, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 315
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 322
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    :cond_3
    return-object v1
.end method

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 7

    .line 376
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 383
    :cond_0
    new-instance v1, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 386
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    const/4 v5, 0x1

    if-nez p3, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eqz v5, :cond_3

    .line 390
    invoke-virtual {v4, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->withReg(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    if-nez p2, :cond_4

    .line 392
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_2

    .line 395
    :cond_3
    invoke-virtual {v1, v3, v4}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    move p2, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_6
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 404
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    :cond_7
    return-object v1
.end method

.method public withFirst(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    .line 227
    new-instance v1, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 230
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1, v2, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    :cond_1
    return-object v1
.end method

.method public withOffset(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 337
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 344
    :cond_0
    new-instance v1, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 347
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {v3, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 354
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    :cond_3
    return-object v1
.end method
