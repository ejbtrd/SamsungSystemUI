.class public final Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;
.super Ljava/lang/Object;
.source "BlurFacadeImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/BlurFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/BlurFacadeImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurFacadeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurFacadeImpl.kt\ncom/android/systemui/controls/ui/util/BlurFacadeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,136:1\n1#2:137\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/util/BlurFacadeImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceStateWrapper:Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->Companion:Lcom/android/systemui/controls/ui/util/BlurFacadeImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/util/ControlsRuneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlsRuneWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->deviceStateWrapper:Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;

    return-void
.end method

.method private final applyBlurEffect(Landroid/view/Window;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 55
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x3e99999a    # 0.3f

    .line 56
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 58
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v0, v0, 0x40

    .line 57
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    sget p0, Lcom/android/systemui/R$color;->control_activity_background_blur:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method private final applyCapturedBlurEffect(Landroid/content/Context;Landroid/view/Window;)V
    .locals 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->takeScreenshot$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const-string v1, "BlurFacadeImpl"

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->setBlurPanelBackground(Landroid/content/Context;Landroid/view/Window;Landroid/graphics/drawable/BitmapDrawable;)V

    const-string p0, "apply captured blur for controls "

    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "apply captured blur for controls (capture failed)"

    .line 81
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    :goto_1
    return-void
.end method

.method private final applyPartialBlurEffect(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    .line 69
    new-instance p0, Landroid/view/SemBlurInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 70
    sget v0, Lcom/android/systemui/R$color;->control_activity_background_blur:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    const/16 p1, 0x80

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p0

    .line 74
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method private final rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 119
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(source, 0, 0, source.width, source.height, matrix, true)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final setBlurPanelBackground(Landroid/content/Context;Landroid/view/Window;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .line 124
    new-instance p0, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 125
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 127
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/systemui/R$color;->control_activity_background_blur:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 133
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private static final setWindowBackground$isMultiWindowMode(Landroid/content/Context;)Z
    .locals 1

    .line 32
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setWindowBackground(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->deviceStateWrapper:Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;

    invoke-interface {v0}, Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;->isOpenTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/android/systemui/R$color;->control_open_theme_bg:I

    invoke-virtual {p2, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    invoke-interface {v0}, Lcom/android/systemui/controls/util/ControlsRuneWrapper;->supportBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {p1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->setWindowBackground$isMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->applyPartialBlurEffect(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->applyBlurEffect(Landroid/view/Window;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    invoke-interface {v0}, Lcom/android/systemui/controls/util/ControlsRuneWrapper;->supportCapturedBlur()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->applyCapturedBlurEffect(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_0

    .line 44
    :cond_3
    sget p0, Lcom/android/systemui/R$color;->control_activity_background_blur_no_blur_model:I

    invoke-virtual {p2, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    const/4 p0, 0x0

    .line 48
    invoke-virtual {p2, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 49
    invoke-virtual {p2, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public final takeScreenshot$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "window"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager;

    .line 90
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 91
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 95
    :goto_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v6

    .line 96
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    const/4 v9, 0x0

    .line 99
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 100
    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v11, v4, 0x5

    .line 101
    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v12, v2, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v8, 0x7d0

    .line 95
    invoke-virtual/range {v6 .. v15}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "BlurFacadeImpl"

    const-string v1, "bitmap is null!!"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v5, :cond_2

    const/16 v1, 0x10e

    goto :goto_1

    :cond_2
    const/16 v1, 0x5a

    :goto_1
    int-to-float v1, v1

    move-object/from16 v3, p0

    .line 112
    invoke-direct {v3, v2, v1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 115
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method
