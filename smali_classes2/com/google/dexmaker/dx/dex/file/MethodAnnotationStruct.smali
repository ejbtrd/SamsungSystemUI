.class public final Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;
.super Ljava/lang/Object;
.source "MethodAnnotationStruct.java"

# interfaces
.implements Lcom/google/dexmaker/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/dexmaker/dx/util/ToHuman;",
        "Ljava/lang/Comparable<",
        "Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

.field private final method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getMethodIds()Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getWordData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;)Lcom/google/dexmaker/dx/dex/file/MethodIdItem;

    .line 81
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public compareTo(Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;)I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->compareTo(Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->hashCode()I

    move-result p0

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getMethodIds()Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v0

    .line 89
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MethodAnnotationStruct;->method:Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      method_idx:      "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {p2, v1, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      annotations_off: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 96
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 97
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
