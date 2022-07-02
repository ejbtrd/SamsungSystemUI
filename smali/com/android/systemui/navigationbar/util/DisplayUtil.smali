.class public Lcom/android/systemui/navigationbar/util/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mPinnedEdgeWidth:I

.field mRotation:I

.field mScreenSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mPinnedEdgeWidth:I

    .line 27
    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 29
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 30
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 31
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 33
    iget-object v4, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private needSubtractPinnedEdgeWidth()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 71
    iget p0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mPinnedEdgeWidth:I

    if-lez p0, :cond_0

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getRotation()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mRotation:I

    return p0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method public getScreenSize(I)Landroid/graphics/Point;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method public setRotation(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mRotation:I

    return-void
.end method

.method public setScreenSize(ILandroid/graphics/Point;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mScreenSizes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setScreenSize(Landroid/graphics/Point;)V
    .locals 4

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setScreenSize(ILandroid/graphics/Point;)V

    .line 39
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_PINNED_EDGE:Z

    if-eqz v1, :cond_0

    .line 40
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mPinnedEdgeWidth:I

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->needSubtractPinnedEdgeWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 43
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/navigationbar/util/DisplayUtil;->mPinnedEdgeWidth:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Point;->set(II)V

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setScreenSize(ILandroid/graphics/Point;)V

    :cond_0
    return-void
.end method
