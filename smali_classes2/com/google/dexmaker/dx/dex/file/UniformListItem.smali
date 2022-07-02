.class public final Lcom/google/dexmaker/dx/dex/file/UniformListItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "UniformListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/dexmaker/dx/dex/file/OffsettedItem;",
        ">",
        "Lcom/google/dexmaker/dx/dex/file/OffsettedItem;"
    }
.end annotation


# instance fields
.field private final itemType:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/file/ItemType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/dx/dex/file/ItemType;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-static {p2}, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->writeSize(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;-><init>(II)V

    const-string v0, "itemType == null"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->itemType:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-void
.end method

.method private static getAlignment(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/dexmaker/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 77
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 83
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "items == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.size() == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private headerSize()I
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result p0

    return p0
.end method

.method private static writeSize(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/dexmaker/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v0

    mul-int/2addr v1, v0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    .line 123
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/file/Item;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    return-object p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->itemType:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method protected place0(Lcom/google/dexmaker/dx/dex/file/Section;I)V
    .locals 6

    .line 160
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->headerSize()I

    move-result v0

    add-int/2addr p2, v0

    .line 166
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    .line 167
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v4

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_0
    if-ne v4, v0, :cond_2

    .line 177
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 183
    :goto_1
    invoke-virtual {v3, p1, p2}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->place(Lcom/google/dexmaker/dx/dex/file/Section;I)I

    move-result p2

    add-int/2addr p2, v4

    goto :goto_0

    .line 178
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "item alignment mismatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "item size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, "{"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :goto_1
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "}"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    const-class v1, Lcom/google/dexmaker/dx/dex/file/UniformListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Item;->typeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 197
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 199
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    .line 200
    invoke-virtual {v0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    goto :goto_0

    :cond_1
    return-void
.end method
