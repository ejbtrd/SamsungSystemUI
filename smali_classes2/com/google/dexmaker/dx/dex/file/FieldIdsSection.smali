.class public final Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;
.super Lcom/google/dexmaker/dx/dex/file/MemberIdsSection;
.source "FieldIdsSection.java"


# instance fields
.field private final fieldIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;",
            "Lcom/google/dexmaker/dx/dex/file/FieldIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 1

    const-string v0, "field_ids"

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/dx/dex/file/MemberIdsSection;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    .line 45
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lcom/google/dexmaker/dx/rop/cst/Constant;)Lcom/google/dexmaker/dx/dex/file/IndexedItem;
    .locals 1

    const-string v0, "cst == null"

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 63
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/file/IndexedItem;

    if-eqz p0, :cond_0

    return-object p0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public indexOf(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)I
    .locals 1

    const-string/jumbo v0, "ref == null"

    .line 124
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 129
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->getIndex()I

    move-result p0

    return p0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intern(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)Lcom/google/dexmaker/dx/dex/file/FieldIdItem;
    .locals 1

    const-string v0, "field == null"

    .line 100
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfPrepared()V

    .line 105
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    invoke-direct {v0, p1}, Lcom/google/dexmaker/dx/dex/file/FieldIdItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)V

    .line 109
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

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
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public writeHeaderPart(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 78
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 80
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->getFileOffset()I

    move-result p0

    .line 83
    :goto_0
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field_ids_size:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, v2, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field_ids_off:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 88
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 89
    invoke-interface {p1, p0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
