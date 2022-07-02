.class public final Lcom/google/dexmaker/dx/util/Leb128Utils;
.super Ljava/lang/Object;
.source "Leb128Utils.java"


# direct methods
.method public static unsignedLeb128Size(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static writeSignedLeb128(Lcom/google/dexmaker/dx/util/ByteOutput;I)V
    .locals 7

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    move v6, v0

    move v0, p1

    move p1, v6

    if-eqz v4, :cond_4

    if-ne p1, v1, :cond_2

    and-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v3

    :goto_3
    and-int/lit8 v0, v0, 0x7f

    if-eqz v4, :cond_3

    const/16 v5, 0x80

    goto :goto_4

    :cond_3
    move v5, v2

    :goto_4
    or-int/2addr v0, v5

    int-to-byte v0, v0

    .line 157
    invoke-interface {p0, v0}, Lcom/google/dexmaker/dx/util/ByteOutput;->writeByte(I)V

    shr-int/lit8 v0, p1, 0x7

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/google/dexmaker/dx/util/ByteOutput;I)V
    .locals 2

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    move v1, v0

    move v0, p1

    move p1, v1

    if-eqz p1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 136
    invoke-interface {p0, v0}, Lcom/google/dexmaker/dx/util/ByteOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, 0x7f

    int-to-byte p1, p1

    .line 141
    invoke-interface {p0, p1}, Lcom/google/dexmaker/dx/util/ByteOutput;->writeByte(I)V

    return-void
.end method
