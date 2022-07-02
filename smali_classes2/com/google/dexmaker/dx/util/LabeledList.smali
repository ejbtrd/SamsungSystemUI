.class public Lcom/google/dexmaker/dx/util/LabeledList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "LabeledList.java"


# instance fields
.field private final labelToIndex:Lcom/google/dexmaker/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    .line 35
    new-instance v0, Lcom/google/dexmaker/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/google/dexmaker/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    return-void
.end method

.method private addLabelIndex(II)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, v0

    if-gt v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/dexmaker/dx/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/IntList;->set(II)V

    return-void
.end method

.method private removeLabel(I)V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/dexmaker/dx/util/IntList;->set(II)V

    return-void
.end method


# virtual methods
.method public final getMaxLabel()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/util/IntList;->shrink(I)V

    return v0
.end method

.method public final indexOfLabel(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/util/LabeledList;->labelToIndex:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result p0

    return p0
.end method

.method protected set(ILcom/google/dexmaker/dx/util/LabeledItem;)V
    .locals 1

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/util/LabeledItem;

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/google/dexmaker/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/dexmaker/dx/util/LabeledList;->removeLabel(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 184
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/LabeledItem;->getLabel()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/dexmaker/dx/util/LabeledList;->addLabelIndex(II)V

    :cond_1
    return-void
.end method
