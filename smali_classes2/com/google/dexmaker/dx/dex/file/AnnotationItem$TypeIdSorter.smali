.class Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;
.super Ljava/lang/Object;
.source "AnnotationItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/dex/file/AnnotationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeIdSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/dexmaker/dx/dex/file/AnnotationItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/dexmaker/dx/dex/file/AnnotationItem$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/dexmaker/dx/dex/file/AnnotationItem;Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)I
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->access$100(Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->getIndex()I

    move-result p0

    .line 72
    invoke-static {p2}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;->access$100(Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->getIndex()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    check-cast p2, Lcom/google/dexmaker/dx/dex/file/AnnotationItem;

    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/AnnotationItem$TypeIdSorter;->compare(Lcom/google/dexmaker/dx/dex/file/AnnotationItem;Lcom/google/dexmaker/dx/dex/file/AnnotationItem;)I

    move-result p0

    return p0
.end method
