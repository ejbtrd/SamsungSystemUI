.class public final Lcom/google/dexmaker/dx/util/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method public static clear([II)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    .line 103
    aget v1, p0, v0

    not-int p1, p1

    and-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static findFirst(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    not-int p1, p1

    and-int/2addr p0, p1

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static findFirst([II)I
    .locals 3

    .line 167
    array-length v0, p0

    and-int/lit8 v1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    :goto_0
    if-ge p1, v0, :cond_1

    .line 171
    aget v2, p0, p1

    if-eqz v2, :cond_0

    .line 173
    invoke-static {v2, v1}, Lcom/google/dexmaker/dx/util/Bits;->findFirst(II)I

    move-result v1

    if-ltz v1, :cond_0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr p0, v1

    return p0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static get([II)Z
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    .line 61
    aget p0, p0, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static makeBitSet(I)[I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 38
    new-array p0, p0, [I

    return-object p0
.end method

.method public static set([II)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    .line 91
    aget v1, p0, v0

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method
