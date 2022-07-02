.class public final Lcom/google/dexmaker/dx/dex/file/AnnotationSetRefItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "AnnotationSetRefItem.java"


# instance fields
.field private annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getWordData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 53
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->toHuman()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result p0

    .line 74
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  annotations_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 78
    :cond_0
    invoke-interface {p2, p0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
