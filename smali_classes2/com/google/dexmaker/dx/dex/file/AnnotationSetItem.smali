.class public final Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "AnnotationSetItem.java"


# instance fields
.field private final annotations:Lcom/google/dexmaker/dx/rop/annotation/Annotations;

.field private final items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 4

    .line 116
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getByteData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object v3

    check-cast v3, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected compareTo0(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)I
    .locals 0

    .line 97
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;

    .line 99
    iget-object p0, p1, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->annotations:Lcom/google/dexmaker/dx/rop/annotation/Annotations;

    const/4 p0, 0x0

    throw p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    .line 91
    throw p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 105
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method protected place0(Lcom/google/dexmaker/dx/dex/file/Section;I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->sortByTypeIdIndex([Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 111
    throw p0
.end method

.method protected writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 6

    .line 134
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 142
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    .line 145
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    aget-object v3, v3, v2

    .line 146
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v3

    if-eqz p1, :cond_1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationSetItem;->items:[Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->annotateTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-interface {p2, v3}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
