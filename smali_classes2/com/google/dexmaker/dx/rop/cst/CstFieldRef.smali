.class public final Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;
.super Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
.source "CstFieldRef.java"


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 74
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    .line 75
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->getDescriptor()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object p0

    .line 76
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->getDescriptor()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->getFieldType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "field"

    return-object p0
.end method
