.class public abstract Lcom/google/dexmaker/dx/dex/file/MemberIdsSection;
.super Lcom/google/dexmaker/dx/dex/file/UniformItemSection;
.source "MemberIdsSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 1

    const/4 v0, 0x4

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;I)V

    return-void
.end method


# virtual methods
.method protected orderItems()V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    .line 45
    instance-of v0, p0, Lcom/google/dexmaker/dx/dex/file/MethodIdsSection;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "methods"

    goto :goto_0

    :cond_0
    const-string v0, "fields"

    .line 46
    :goto_0
    new-instance v2, Lcom/google/dexmaker/dx/util/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; max is "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/dexmaker/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;

    invoke-virtual {v1, v0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->setIndex(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
