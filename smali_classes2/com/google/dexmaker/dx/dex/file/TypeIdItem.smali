.class public final Lcom/google/dexmaker/dx/dex/file/TypeIdItem;
.super Lcom/google/dexmaker/dx/dex/file/IdItem;
.source "TypeIdItem.java"


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/dex/file/IdItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IdItem;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->getDescriptor()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstString;)Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    return-void
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 41
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public writeSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IdItem;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->getDescriptor()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstString;)I

    move-result p1

    .line 63
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const/4 p0, 0x4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  descriptor_idx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 68
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
