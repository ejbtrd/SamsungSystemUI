.class public Landroidx/picker/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SeslRecentColorInfo.java"


# instance fields
.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mRecentColorInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getCurrentColor()Ljava/lang/Integer;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    return-object p0
.end method

.method getNewColor()Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    return-object p0
.end method

.method getRecentColorInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSelectedColor()Ljava/lang/Integer;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public initRecentColorInfo([I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 52
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 53
    iget-object v3, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    .line 57
    iget-object v0, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public saveSelectedColor(I)V
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroidx/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    return-void
.end method
