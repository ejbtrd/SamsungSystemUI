.class public final Lcom/google/dexmaker/dx/rop/code/InsnList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "InsnList.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public forEach(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/InsnList;->get(I)Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->accept(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/google/dexmaker/dx/rop/code/Insn;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/rop/code/Insn;

    return-object p0
.end method

.method public getLast()Lcom/google/dexmaker/dx/rop/code/Insn;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/InsnList;->get(I)Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object p0

    return-object p0
.end method

.method public set(ILcom/google/dexmaker/dx/rop/code/Insn;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
