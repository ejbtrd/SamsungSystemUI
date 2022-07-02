.class public final Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;
.super Lcom/google/dexmaker/dx/dex/file/UniformItemSection;
.source "ProtoIdsSection.java"


# instance fields
.field private final protoIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/google/dexmaker/dx/rop/type/Prototype;",
            "Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 2

    const-string/jumbo v0, "proto_ids"

    const/4 v1, 0x4

    .line 43
    invoke-direct {p0, v0, p1, v1}, Lcom/google/dexmaker/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;I)V

    .line 45
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public indexOf(Lcom/google/dexmaker/dx/rop/type/Prototype;)I
    .locals 1

    const-string/jumbo v0, "prototype == null"

    .line 116
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 121
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->getIndex()I

    move-result p0

    return p0

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intern(Lcom/google/dexmaker/dx/rop/type/Prototype;)Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;
    .locals 1

    const-string/jumbo v0, "prototype == null"

    .line 92
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfPrepared()V

    .line 97
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;

    invoke-direct {v0, p1}, Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;-><init>(Lcom/google/dexmaker/dx/rop/type/Prototype;)V

    .line 101
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public items()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/dexmaker/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected orderItems()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->items()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 136
    check-cast v1, Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;

    invoke-virtual {v1, v0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->setIndex(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 68
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->getFileOffset()I

    move-result p0

    :goto_0
    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_2

    .line 75
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proto_ids_size:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, v2, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proto_ids_off:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 80
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 81
    invoke-interface {p1, p0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "too many proto ids"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
