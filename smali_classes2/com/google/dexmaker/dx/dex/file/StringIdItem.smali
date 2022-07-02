.class public final Lcom/google/dexmaker/dx/dex/file/StringIdItem;
.super Lcom/google/dexmaker/dx/dex/file/IndexedItem;
.source "StringIdItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private data:Lcom/google/dexmaker/dx/dex/file/StringDataItem;

.field private final value:Lcom/google/dexmaker/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstString;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;-><init>()V

    const-string/jumbo v0, "value == null"

    .line 42
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->data:Lcom/google/dexmaker/dx/dex/file/StringDataItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->data:Lcom/google/dexmaker/dx/dex/file/StringDataItem;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/StringDataItem;

    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/dex/file/StringDataItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstString;)V

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->data:Lcom/google/dexmaker/dx/dex/file/StringDataItem;

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->add(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    .line 69
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    .line 57
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getValue()Lcom/google/dexmaker/dx/rop/cst/CstString;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstString;->hashCode()I

    move-result p0

    return p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 75
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public writeSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 98
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->data:Lcom/google/dexmaker/dx/dex/file/StringDataItem;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result p1

    .line 100
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/StringIdItem;->value:Lcom/google/dexmaker/dx/rop/cst/CstString;

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toQuoted(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const/4 p0, 0x4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  string_data_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 105
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
