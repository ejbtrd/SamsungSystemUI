.class final Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAlignMultiple:[I

.field private mAlignX:I

.field private mAlignY:I

.field private mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

.field mBottomInset:I

.field mLeftInset:I

.field mRightInset:I

.field mTopInset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method


# virtual methods
.method calculateItemAlignments(ILandroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "view"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 174
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 175
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 177
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 178
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget-object v4, v0, v2

    .line 179
    invoke-static {p2, v4, p1}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 182
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p1, p1, v1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    goto :goto_1

    .line 184
    :cond_3
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p1, p1, v1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    :goto_1
    return-void
.end method

.method getAlignMultiple()[I
    .locals 0

    .line 189
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    return-object p0
.end method

.method getAlignX()I
    .locals 0

    .line 109
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return p0
.end method

.method getAlignY()I
    .locals 0

    .line 113
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return p0
.end method

.method getItemAlignmentFacet()Landroidx/leanback/widget/ItemAlignmentFacet;
    .locals 0

    .line 169
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    return-object p0
.end method

.method getOpticalHeight(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr p1, v0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p1, p0

    return p1
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p1, p0

    return p1
.end method

.method getOpticalLeftInset()I
    .locals 0

    .line 141
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return p0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p1, p0

    return p1
.end method

.method getOpticalRightInset()I
    .locals 0

    .line 145
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    return p0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p1, p0

    return p1
.end method

.method getOpticalTopInset()I
    .locals 0

    .line 149
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return p0
.end method

.method getOpticalWidth(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p1, v0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p1, p0

    return p1
.end method

.method setAlignX(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignX"
        }
    .end annotation

    .line 157
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return-void
.end method

.method setAlignY(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignY"
        }
    .end annotation

    .line 161
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return-void
.end method

.method setItemAlignmentFacet(Landroidx/leanback/widget/ItemAlignmentFacet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facet"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    return-void
.end method

.method setOpticalInsets(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftInset",
            "topInset",
            "rightInset",
            "bottomInset"
        }
    .end annotation

    .line 193
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 194
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 195
    iput p3, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 196
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    return-void
.end method
