.class public Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.source "ScreenCaptureHelperForWindow.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected initiallizeCaptureType()V
    .locals 1

    const/16 v0, 0x64

    .line 20
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    return-void
.end method

.method protected initiallizeScreenshotVariable()V
    .locals 11

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 27
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    .line 28
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegrees(Landroid/view/Display;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    .line 31
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "windowCapture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    .line 42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    .line 43
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v3

    move v4, v0

    move v5, v4

    .line 46
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v6, v7, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    .line 48
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    .line 49
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v2, v6

    if-nez v6, :cond_1

    .line 57
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    sub-int v4, v2, v4

    sub-int/2addr v2, v3

    .line 59
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    const/high16 v6, 0x43870000    # 270.0f

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 61
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    sub-int v5, v2, v5

    sub-int/2addr v2, v0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 69
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getBuiltInDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    .line 71
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mWindowMode:I

    return-void
.end method

.method public isShowScreenshotAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
