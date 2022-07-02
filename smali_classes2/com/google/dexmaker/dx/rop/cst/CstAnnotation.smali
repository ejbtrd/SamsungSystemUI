.class public final Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;
.super Lcom/google/dexmaker/dx/rop/cst/Constant;
.source "CstAnnotation.java"


# instance fields
.field private final annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;


# virtual methods
.method protected compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 0

    .line 62
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    iget-object p0, p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;->annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    const/4 p0, 0x0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    instance-of p0, p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;

    iget-object p0, p1, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;->annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    const/4 p0, 0x0

    throw p0
.end method

.method public getAnnotation()Lcom/google/dexmaker/dx/rop/annotation/Annotation;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstAnnotation;->annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    .line 56
    throw p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 85
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 68
    throw p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "annotation"

    return-object p0
.end method
