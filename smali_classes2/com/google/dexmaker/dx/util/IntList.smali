.class public final Lcom/google/dexmaker/dx/util/IntList;
.super Lcom/google/dexmaker/dx/util/MutabilityControl;
.source "IntList.java"


# static fields
.field public static final EMPTY:Lcom/google/dexmaker/dx/util/IntList;


# instance fields
.field private size:I

.field private sorted:Z

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/dexmaker/dx/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/util/IntList;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/util/IntList;->EMPTY:Lcom/google/dexmaker/dx/util/IntList;

    .line 38
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 75
    invoke-direct {p0, v0}, Lcom/google/dexmaker/dx/util/IntList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/google/dexmaker/dx/util/MutabilityControl;-><init>(Z)V

    .line 87
    :try_start_0
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    .line 94
    iput-boolean v0, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    return-void

    .line 90
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private growIfNeeded()V
    .locals 4

    .line 272
    iget v0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    iget-object v1, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 274
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 275
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v2, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfImmutable()V

    .line 217
    invoke-direct {p0}, Lcom/google/dexmaker/dx/util/IntList;->growIfNeeded()V

    .line 219
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    iget v1, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    aput p1, v0, v1

    .line 221
    iget-boolean v1, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-le v2, v1, :cond_1

    add-int/lit8 v2, v2, -0x2

    .line 222
    aget v0, v0, v2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    :cond_1
    return-void
.end method

.method public binarysearch(I)I
    .locals 5

    .line 393
    iget v0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    .line 395
    iget-boolean v1, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    iget-object v2, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    neg-int p0, v0

    return p0

    :cond_2
    const/4 v1, -0x1

    move v2, v0

    :goto_1
    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_4

    sub-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 423
    iget-object v4, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-eq v2, v0, :cond_6

    .line 433
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget p0, p0, v2

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    neg-int p0, v2

    add-int/lit8 v2, p0, -0x1

    :goto_2
    return v2

    :cond_6
    neg-int p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public contains(I)Z
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/IntList;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/google/dexmaker/dx/util/IntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lcom/google/dexmaker/dx/util/IntList;

    .line 122
    iget-boolean v1, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    iget-boolean v3, p1, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 126
    :cond_2
    iget v1, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    iget v3, p1, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    .line 130
    :goto_0
    iget v3, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-ge v1, v3, :cond_5

    .line 131
    iget-object v3, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(I)I
    .locals 1

    .line 172
    iget v0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_0

    .line 177
    :try_start_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 180
    :catch_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    iget v2, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    iget-object v2, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/IntList;->binarysearch(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public set(II)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfImmutable()V

    .line 193
    iget v0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aput p2, v0, p1

    const/4 p2, 0x0

    .line 199
    iput-boolean p2, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-ltz p1, :cond_0

    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shrink(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 329
    iget v0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-gt p1, v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfImmutable()V

    .line 335
    iput p1, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    return-void

    .line 330
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "newSize > size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "newSize < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    return p0
.end method

.method public sort()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfImmutable()V

    .line 360
    iget-boolean v0, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/google/dexmaker/dx/util/IntList;->sorted:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 146
    :goto_0
    iget v2, p0, Lcom/google/dexmaker/dx/util/IntList;->size:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/google/dexmaker/dx/util/IntList;->values:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
