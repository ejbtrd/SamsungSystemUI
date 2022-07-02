.class public Lcom/android/systemui/util/BlurEffectUtils;
.super Ljava/lang/Object;
.source "BlurEffectUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/util/BlurEffectUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getScreenShot(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 26
    iget-object p0, p0, Lcom/android/systemui/util/BlurEffectUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 27
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 p0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v2, 0x7f4

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 33
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object p1, p0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "BlurEffectUtils"

    const-string p2, "bitmap is null !!!!"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public setCaptureBlur(Landroid/view/View;[III)V
    .locals 5

    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v4, p2, v3

    aget v1, p2, v1

    add-int/2addr v1, p3

    aget p2, p2, v3

    add-int/2addr p2, p4

    invoke-direct {v0, v2, v4, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/util/BlurEffectUtils;->getScreenShot(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    new-instance p2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {p2, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 53
    invoke-virtual {p2, p0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 55
    invoke-virtual {p2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_0
    return-void
.end method

.method public setRealTimeBlurEffect(Landroid/view/View;FI)V
    .locals 1

    .line 64
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    new-instance p0, Landroid/view/SemBlurInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 66
    invoke-virtual {p0, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 67
    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_0
    return-void
.end method
