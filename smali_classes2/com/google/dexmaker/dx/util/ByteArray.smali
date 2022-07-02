.class public final Lcom/google/dexmaker/dx/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final size:I

.field private final start:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/dexmaker/dx/util/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bytes == null"

    .line 50
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_2

    if-lt p3, p2, :cond_1

    .line 61
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/google/dexmaker/dx/util/ByteArray;->bytes:[B

    .line 66
    iput p2, p0, Lcom/google/dexmaker/dx/util/ByteArray;->start:I

    sub-int/2addr p3, p2

    .line 67
    iput p3, p0, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end > bytes.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end < start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "start < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBytes([BI)V
    .locals 2

    .line 207
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/ByteArray;->bytes:[B

    iget p0, p0, Lcom/google/dexmaker/dx/util/ByteArray;->start:I

    invoke-static {v0, p0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "(out.length - offset) < size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    return p0
.end method
