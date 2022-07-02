.class public final Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;
.super Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
.source "CstEnumRef.java"


# instance fields
.field private fieldRef:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;


# virtual methods
.method public getFieldRef()Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/cst/CstNat;)V

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstEnumRef;->fieldRef:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    return-object p0
.end method

.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->getClassType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "enum"

    return-object p0
.end method
