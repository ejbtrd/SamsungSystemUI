.class public Lcom/android/systemui/globalactions/ListGridLayout;
.super Landroid/widget/LinearLayout;
.source "ListGridLayout.java"


# instance fields
.field private final mConfigs:[[I

.field private mCurrentCount:I

.field private mExpectedCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    const/16 p2, 0xa

    new-array p2, p2, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 51
    fill-array-data v1, :array_0

    aput-object v1, p2, p1

    new-array p1, v0, [I

    fill-array-data p1, :array_1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_2

    aput-object p1, p2, v0

    new-array p1, v0, [I

    fill-array-data p1, :array_3

    const/4 v1, 0x3

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_4

    const/4 v1, 0x4

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_5

    const/4 v1, 0x5

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_6

    const/4 v1, 0x6

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_7

    const/4 v1, 0x7

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_8

    const/16 v1, 0x8

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_9

    const/16 v0, 0x9

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private getConfig()[I
    .locals 2

    .line 182
    iget v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    if-gez v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getMaxElementCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mExpectedCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    aget-object p0, p0, v0

    return-object p0
.end method

.method private getMaxElementCount()I
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mConfigs:[[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getParentViewIndex(IZZ)I
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz p3, :cond_0

    .line 160
    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    .line 162
    :cond_0
    rem-int/2addr p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->reverseSublistIndex(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method private reverseSublistIndex(I)I
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected getParentView(IZZ)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getMaxElementCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/ListGridLayout;->getParentViewIndex(IZZ)I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRowCount()I
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/globalactions/ListGridLayout;->getConfig()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected getSublist(I)Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
