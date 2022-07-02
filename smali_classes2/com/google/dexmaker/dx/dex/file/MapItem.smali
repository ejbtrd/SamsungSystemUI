.class public final Lcom/google/dexmaker/dx/dex/file/MapItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "MapItem.java"


# instance fields
.field private final firstItem:Lcom/google/dexmaker/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/google/dexmaker/dx/dex/file/Item;

.field private final section:Lcom/google/dexmaker/dx/dex/file/Section;

.field private final type:Lcom/google/dexmaker/dx/dex/file/ItemType;


# direct methods
.method private constructor <init>(Lcom/google/dexmaker/dx/dex/file/ItemType;Lcom/google/dexmaker/dx/dex/file/Section;Lcom/google/dexmaker/dx/dex/file/Item;Lcom/google/dexmaker/dx/dex/file/Item;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;-><init>(II)V

    const-string/jumbo v0, "type == null"

    .line 129
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "section == null"

    .line 133
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "firstItem == null"

    .line 137
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "lastItem == null"

    .line 141
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p5, :cond_0

    .line 148
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 149
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->section:Lcom/google/dexmaker/dx/dex/file/Section;

    .line 150
    iput-object p3, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->firstItem:Lcom/google/dexmaker/dx/dex/file/Item;

    .line 151
    iput-object p4, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->lastItem:Lcom/google/dexmaker/dx/dex/file/Item;

    .line 152
    iput p5, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->itemCount:I

    return-void

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Lcom/google/dexmaker/dx/dex/file/Section;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 162
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;-><init>(II)V

    const-string/jumbo v0, "section == null"

    .line 165
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 169
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->section:Lcom/google/dexmaker/dx/dex/file/Section;

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->firstItem:Lcom/google/dexmaker/dx/dex/file/Item;

    .line 171
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->lastItem:Lcom/google/dexmaker/dx/dex/file/Item;

    const/4 p1, 0x1

    .line 172
    iput p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->itemCount:I

    return-void
.end method

.method public static addMap([Lcom/google/dexmaker/dx/dex/file/Section;Lcom/google/dexmaker/dx/dex/file/MixedItemSection;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "sections == null"

    .line 70
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v12, v0, v5

    .line 86
    invoke-virtual {v12}, Lcom/google/dexmaker/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/google/dexmaker/dx/dex/file/Item;

    .line 87
    invoke-virtual {v14}, Lcom/google/dexmaker/dx/dex/file/Item;->itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;

    move-result-object v15

    if-eq v15, v7, :cond_1

    if-eqz v11, :cond_0

    .line 90
    new-instance v8, Lcom/google/dexmaker/dx/dex/file/MapItem;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/dexmaker/dx/dex/file/MapItem;-><init>(Lcom/google/dexmaker/dx/dex/file/ItemType;Lcom/google/dexmaker/dx/dex/file/Section;Lcom/google/dexmaker/dx/dex/file/Item;Lcom/google/dexmaker/dx/dex/file/Item;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_3

    .line 103
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/MapItem;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/dexmaker/dx/dex/file/MapItem;-><init>(Lcom/google/dexmaker/dx/dex/file/ItemType;Lcom/google/dexmaker/dx/dex/file/Section;Lcom/google/dexmaker/dx/dex/file/Item;Lcom/google/dexmaker/dx/dex/file/Item;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-ne v12, v1, :cond_4

    .line 107
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/MapItem;

    invoke-direct {v4, v1}, Lcom/google/dexmaker/dx/dex/file/MapItem;-><init>(Lcom/google/dexmaker/dx/dex/file/Section;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/UniformListItem;

    sget-object v3, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-direct {v0, v3, v2}, Lcom/google/dexmaker/dx/dex/file/UniformListItem;-><init>(Lcom/google/dexmaker/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->add(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)V

    return-void

    .line 74
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    return-void
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 178
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 186
    const-class v1, Lcom/google/dexmaker/dx/dex/file/MapItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->section:Lcom/google/dexmaker/dx/dex/file/Section;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 191
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 5

    .line 211
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/ItemType;->getMapValue()I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->firstItem:Lcom/google/dexmaker/dx/dex/file/Item;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->section:Lcom/google/dexmaker/dx/dex/file/Section;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/file/Section;->getFileOffset()I

    move-result v0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->section:Lcom/google/dexmaker/dx/dex/file/Section;

    invoke-virtual {v1, v0}, Lcom/google/dexmaker/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/google/dexmaker/dx/dex/file/Item;)I

    move-result v0

    .line 220
    :goto_0
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->type:Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p2, v3, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const-string v1, "  unused: 0"

    .line 225
    invoke-interface {p2, v3, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v3}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  offset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 230
    :cond_1
    invoke-interface {p2, p1}, Lcom/google/dexmaker/dx/util/Output;->writeShort(I)V

    .line 231
    invoke-interface {p2, v2}, Lcom/google/dexmaker/dx/util/Output;->writeShort(I)V

    .line 232
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, p0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 233
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
