.class Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder$1;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder;


# direct methods
.method constructor <init>(Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder$1;->this$0:Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;)I
    .locals 0

    .line 497
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p0

    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 495
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;

    check-cast p2, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/DebugInfoEncoder$1;->compare(Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
