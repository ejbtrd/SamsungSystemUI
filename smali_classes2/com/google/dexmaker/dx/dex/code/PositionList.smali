.class public final Lcom/google/dexmaker/dx/dex/code/PositionList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "PositionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/dexmaker/dx/dex/code/PositionList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/PositionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/dex/code/PositionList;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/PositionList;->EMPTY:Lcom/google/dexmaker/dx/dex/code/PositionList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/dex/code/DalvInsnList;I)Lcom/google/dexmaker/dx/dex/code/PositionList;
    .locals 13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/dexmaker/dx/rop/code/SourcePosition;->NO_INFO:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    .line 75
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v3

    .line 76
    new-array v4, v3, [Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;

    const/4 v5, 0x0

    move-object v8, v1

    move v6, v5

    move v7, v6

    move v9, v7

    :goto_1
    if-ge v6, v3, :cond_6

    .line 81
    invoke-virtual {p0, v6}, Lcom/google/dexmaker/dx/dex/code/DalvInsnList;->get(I)Lcom/google/dexmaker/dx/dex/code/DalvInsn;

    move-result-object v10

    .line 83
    instance-of v11, v10, Lcom/google/dexmaker/dx/dex/code/CodeAddress;

    if-eqz v11, :cond_2

    move v9, v0

    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v10}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v11

    .line 90
    invoke-virtual {v11, v1}, Lcom/google/dexmaker/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v8}, Lcom/google/dexmaker/dx/rop/code/SourcePosition;->sameLine(Lcom/google/dexmaker/dx/rop/code/SourcePosition;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    if-nez v9, :cond_4

    goto :goto_2

    .line 99
    :cond_4
    new-instance v8, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;

    invoke-virtual {v10}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getAddress()I

    move-result v9

    invoke-direct {v8, v9, v11}, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;-><init>(ILcom/google/dexmaker/dx/rop/code/SourcePosition;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move v9, v5

    move-object v8, v11

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105
    :cond_6
    new-instance p0, Lcom/google/dexmaker/dx/dex/code/PositionList;

    invoke-direct {p0, v7}, Lcom/google/dexmaker/dx/dex/code/PositionList;-><init>(I)V

    :goto_3
    if-ge v5, v7, :cond_7

    .line 107
    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Lcom/google/dexmaker/dx/dex/code/PositionList;->set(ILcom/google/dexmaker/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    return-object p0

    .line 61
    :cond_8
    sget-object p0, Lcom/google/dexmaker/dx/dex/code/PositionList;->EMPTY:Lcom/google/dexmaker/dx/dex/code/PositionList;

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;

    return-object p0
.end method

.method public set(ILcom/google/dexmaker/dx/dex/code/PositionList$Entry;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
