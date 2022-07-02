.class public abstract Lcom/google/dexmaker/dx/rop/code/Insn;
.super Ljava/lang/Object;
.source "Insn.java"

# interfaces
.implements Lcom/google/dexmaker/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/rop/code/Insn$BaseVisitor;,
        Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;
    }
.end annotation


# instance fields
.field private final opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

.field private final position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

.field private final result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

.field private final sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/Rop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "opcode == null"

    .line 54
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "position == null"

    .line 58
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "sources == null"

    .line 62
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

    .line 66
    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    .line 67
    iput-object p3, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    .line 68
    iput-object p4, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V
.end method

.method public final canThrow()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Rop;->canThrow()Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getCatches()Lcom/google/dexmaker/dx/rop/type/TypeList;
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

    return-object p0
.end method

.method public final getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    return-object p0
.end method

.method public final getResult()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    return-object p0
.end method

.method public final getSources()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 91
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/Insn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 341
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/code/Rop;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    const-string v1, "("

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    const-string v1, " ."

    const-string v2, " "

    if-nez p1, :cond_1

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string p1, " <-"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    iget-object v3, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-virtual {v3, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Insn;->getInlineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/Insn;->toStringWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final toStringWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Insn{"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    iget-object v2, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->opcode:Lcom/google/dexmaker/dx/rop/code/Rop;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, " :: "

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    iget-object p1, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->result:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " <- "

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/Insn;->sources:Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
