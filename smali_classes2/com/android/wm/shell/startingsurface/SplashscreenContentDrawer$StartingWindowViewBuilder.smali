.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingWindowViewBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$ShapeIconFactory;
    }
.end annotation


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mContext:Landroid/content/Context;

.field private mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFinalIconSize:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mSuggestType:I

.field private mThemeColor:I

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public static synthetic $r8$lambda$0rCbThzQRrm5il7naPnQsk-KMIw(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->lambda$processAdaptiveIcon$0(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mzLU_RMWQL7cNDk9RvYD7PQs7L4(Landroid/graphics/drawable/AdaptiveIconDrawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->lambda$processAdaptiveIcon$1(Landroid/graphics/drawable/AdaptiveIconDrawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 416
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    .line 417
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method

.method private createIconDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 565
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 566
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p2

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/os/Handler;

    move-result-object v1

    .line 565
    invoke-static {p1, p2, v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory;->makeLegacyIconDrawable(Landroid/graphics/drawable/Drawable;IILandroid/os/Handler;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 568
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 569
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 570
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/os/Handler;

    move-result-object v5

    move-object v2, p1

    .line 568
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory;->makeIconDrawable(IILandroid/graphics/drawable/Drawable;IILandroid/os/Handler;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method private fillViewWithIcon(I[Landroid/graphics/drawable/Drawable;I)Landroid/window/SplashScreenView;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 636
    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 637
    :goto_0
    array-length v3, p2

    if-le v3, v0, :cond_2

    aget-object p2, p2, v0

    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_1
    const-wide/16 v3, 0x20

    const-string p2, "fillViewWithIcon"

    .line 640
    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 641
    new-instance p2, Landroid/window/SplashScreenView$Builder;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    .line 642
    invoke-virtual {p2, v5}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p2

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 643
    invoke-virtual {p2, v5}, Landroid/window/SplashScreenView$Builder;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object p2

    .line 644
    invoke-virtual {p2, p1}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 645
    invoke-virtual {p1, v1}, Landroid/window/SplashScreenView$Builder;->setIconBackground(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 646
    invoke-virtual {p1, v2}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 647
    invoke-virtual {p1, p3}, Landroid/window/SplashScreenView$Builder;->setAnimationDurationMillis(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 650
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 651
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 652
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/window/SplashScreenView$Builder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 656
    :cond_3
    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mSuggestType:I

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 657
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 658
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 659
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    .line 658
    invoke-virtual {p1, p2, p3, v0}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 661
    :cond_4
    invoke-virtual {p1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object p1

    .line 662
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 663
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillViewWithIcon surfaceWindowView "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_5
    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mSuggestType:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_6

    .line 666
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$1;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p1, p2}, Landroid/window/SplashScreenView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 681
    :cond_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1
.end method

.method private static synthetic lambda$processAdaptiveIcon$0(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
    .locals 2

    .line 585
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method private static synthetic lambda$processAdaptiveIcon$1(Landroid/graphics/drawable/AdaptiveIconDrawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
    .locals 1

    .line 587
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private processAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 12

    .line 575
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x20

    const-string/jumbo v0, "processAdaptiveIcon"

    .line 579
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 580
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 581
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 582
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v6, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mColorCache:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 583
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 584
    invoke-static {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v9

    new-instance v10, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v10, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V

    .line 582
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache;->getIconColor(Ljava/lang/String;IILjava/util/function/Supplier;Ljava/util/function/Supplier;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    move-result-object v0

    .line 589
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 590
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FgMainColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgColor:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " BgMainColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mBgColor:I

    .line 591
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IsBgComplex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgComplex:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " FromCache="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Cache;->mReuseCount:I

    if-lez v8, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ThemeColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    .line 594
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2
    iget-boolean v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgComplex:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    iget v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mBgColor:I

    .line 606
    invoke-static {v5, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2000(II)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mIsBgGrayscale:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    iget v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;->mFgColor:I

    .line 608
    invoke-static {v5, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2000(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 609
    :cond_3
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 610
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "makeSplashScreenContentView: choose fg icon"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 619
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v5, v0

    float-to-int p1, v5

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 620
    invoke-direct {p0, v4, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 622
    :cond_5
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 623
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "makeSplashScreenContentView: draw whole icon"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 627
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v6
.end method


# virtual methods
.method build()Landroid/window/SplashScreenView;
    .locals 6

    .line 438
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mSuggestType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    .line 449
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 450
    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    if-ne v3, v4, :cond_2

    .line 451
    :cond_1
    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 453
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;Z)V

    move v1, v2

    goto :goto_4

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;

    if-eqz v0, :cond_5

    .line 458
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->isDataReusable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->access$900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->getSyncKey()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 463
    :try_start_0
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->getSyncKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 465
    :try_start_1
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error while loading Data"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Use preloaded icon after delayed loading"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 467
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 470
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 471
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 472
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->fillViewWithIcon(I[Landroid/graphics/drawable/Drawable;I)Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0

    .line 507
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->loadIconDrawableForSplashScreen()V

    goto :goto_4

    .line 442
    :cond_6
    :goto_3
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 513
    :goto_4
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->fillViewWithIcon(I[Landroid/graphics/drawable/Drawable;I)Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0
.end method

.method chooseStyle(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 431
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mSuggestType:I

    return-object p0
.end method

.method loadIconDrawableForSplashScreen()V
    .locals 7

    .line 524
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 525
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const-wide/16 v1, 0x20

    const-string v3, "getIcon"

    .line 528
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 530
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-nez v3, :cond_0

    .line 532
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/launcher3/icons/IconProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 537
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v3, :cond_1

    .line 539
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 541
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->processAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 542
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The icon is not an AdaptiveIconDrawable"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v4, "legacy_icon_factory"

    .line 545
    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 546
    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$ShapeIconFactory;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 547
    invoke-static {v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder$ShapeIconFactory;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;Landroid/content/Context;II)V

    const/4 v0, 0x1

    .line 549
    invoke-virtual {v4, v3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 551
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 552
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    return-void
.end method

.method overlayDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method preloadSplashScreenAppIcon(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)V
    .locals 0

    .line 518
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->loadIconDrawableForSplashScreen()V

    .line 519
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->setIconDrawables([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setWindowBGColor(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 421
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    return-object p0
.end method
