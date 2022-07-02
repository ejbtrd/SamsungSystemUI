.class public final Lcom/google/dexmaker/dx/rop/code/Rop;
.super Ljava/lang/Object;
.source "Rop.java"


# instance fields
.field private final branchingness:I

.field private final exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

.field private final isCallLike:Z

.field private final nickname:Ljava/lang/String;

.field private final opcode:I

.field private final result:Lcom/google/dexmaker/dx/rop/type/Type;

.field private final sources:Lcom/google/dexmaker/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;ILjava/lang/String;)V
    .locals 8

    .line 161
    sget-object v4, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->EMPTY:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/dexmaker/dx/rop/code/Rop;-><init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;IZLjava/lang/String;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "result == null"

    .line 98
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "sources == null"

    .line 102
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "exceptions == null"

    .line 106
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p5, v0, :cond_2

    const/4 v0, 0x6

    if-gt p5, v0, :cond_2

    .line 113
    invoke-interface {p4}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne p5, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceptions / branchingness mismatch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    .line 119
    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 120
    iput-object p3, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    .line 121
    iput-object p4, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    .line 122
    iput p5, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    .line 123
    iput-boolean p6, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->isCallLike:Z

    .line 124
    iput-object p7, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    return-void

    .line 110
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus branchingness"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 196
    invoke-direct/range {v0 .. v7}, Lcom/google/dexmaker/dx/rop/code/Rop;-><init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Ljava/lang/String;)V
    .locals 8

    .line 177
    sget-object v4, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->EMPTY:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/dexmaker/dx/rop/code/Rop;-><init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;)V
    .locals 8

    .line 211
    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/dexmaker/dx/rop/code/Rop;-><init>(ILcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/type/TypeList;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final canThrow()Z
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 223
    :cond_0
    instance-of v1, p1, Lcom/google/dexmaker/dx/rop/code/Rop;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 227
    :cond_1
    check-cast p1, Lcom/google/dexmaker/dx/rop/code/Rop;

    .line 229
    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    iget v3, p1, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    iget v3, p1, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object v3, p1, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    iget-object v3, p1, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBranchingness()I
    .locals 0

    .line 350
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    return p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Rop;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOpcode()I
    .locals 0

    .line 313
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 239
    iget v0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isCallLike()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->isCallLike:Z

    return p0
.end method

.method public isCommutative()Z
    .locals 1

    .line 371
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Rop{"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->opcode:I

    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/code/RegOps;->opName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v3, " "

    const-string v4, " ."

    if-eq v1, v2, :cond_0

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->result:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " <-"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result v1

    const/16 v2, 0x20

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_1
    if-ge v4, v1, :cond_2

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    iget-object v6, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->sources:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {v6, v4}, Lcom/google/dexmaker/dx/rop/type/TypeList;->getType(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->isCallLike:Z

    if-eqz v1, :cond_3

    const-string v1, " call"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, " throws"

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-ge v5, v1, :cond_b

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    iget-object v3, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {v3, v5}, Lcom/google/dexmaker/dx/rop/type/TypeList;->getType(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    .line 285
    sget-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    if-ne v3, v4, :cond_4

    const-string v3, "<any>"

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 288
    :cond_4
    iget-object v3, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->exceptions:Lcom/google/dexmaker/dx/rop/type/TypeList;

    invoke-interface {v3, v5}, Lcom/google/dexmaker/dx/rop/type/TypeList;->getType(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 292
    :cond_5
    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/Rop;->branchingness:I

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    const-string p0, " switches"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7
    const-string p0, " ifs"

    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    const-string p0, " gotos"

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    const-string p0, " returns"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    const-string p0, " flows"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    :goto_5
    const/16 p0, 0x7d

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
