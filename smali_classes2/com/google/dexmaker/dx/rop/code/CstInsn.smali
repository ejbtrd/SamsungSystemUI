.class public abstract Lcom/google/dexmaker/dx/rop/code/CstInsn;
.super Lcom/google/dexmaker/dx/rop/code/Insn;
.source "CstInsn.java"


# instance fields
.field private final cst:Lcom/google/dexmaker/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/Rop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/dexmaker/dx/rop/code/Insn;-><init>(Lcom/google/dexmaker/dx/rop/code/Rop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    const-string p1, "cst == null"

    .line 43
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p5, p0, Lcom/google/dexmaker/dx/rop/code/CstInsn;->cst:Lcom/google/dexmaker/dx/rop/cst/Constant;

    return-void
.end method


# virtual methods
.method public getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/CstInsn;->cst:Lcom/google/dexmaker/dx/rop/cst/Constant;

    return-object p0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/CstInsn;->cst:Lcom/google/dexmaker/dx/rop/cst/Constant;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
