.class public final Lcom/google/dexmaker/dx/dex/file/AnnotationItem;
.super Lcom/google/dexmaker/dx/dex/file/OffsettedItem;
.source "AnnotationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;
    }
.end annotation


# static fields
.field private static final TYPE_ID_SORTER:Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;


# instance fields
.field private final annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

.field private encodedForm:[B

.field private type:Lcom/google/dexmaker/dx/dex/file/TypeIdItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>(Lcom/google/dexmaker/dx/dex/file/AnnotationItem$1;)V

    sput-object v0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;

    return-void
.end method

.method static synthetic access$100(Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->type:Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    return-object p0
.end method

.method public static sortByTypeIdIndex([Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)V
    .locals 1

    .line 92
    sget-object v0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 144
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    const/4 p0, 0x0

    throw p0
.end method

.method public annotateTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .locals 0

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "visibility: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method

.method protected compareTo0(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)I
    .locals 0

    .line 131
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    .line 133
    iget-object p0, p1, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    const/4 p0, 0x0

    throw p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    .line 125
    throw p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 119
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method protected place0(Lcom/google/dexmaker/dx/dex/file/Section;I)V
    .locals 2

    .line 153
    new-instance p2, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 154
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/Section;->getFile()Lcom/google/dexmaker/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;-><init>(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    .line 156
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->annotation:Lcom/google/dexmaker/dx/rop/annotation/Annotation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/dexmaker/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/google/dexmaker/dx/rop/annotation/Annotation;Z)V

    .line 157
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->encodedForm:[B

    .line 160
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 139
    throw p0
.end method

.method protected writeTo0(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 0

    .line 188
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    const/4 p0, 0x0

    .line 189
    throw p0
.end method
