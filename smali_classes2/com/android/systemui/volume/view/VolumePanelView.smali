.class public Lcom/android/systemui/volume/view/VolumePanelView;
.super Landroid/app/Dialog;
.source "VolumePanelView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static IS_TABLET:Z


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mActiveStream:I

.field private final mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field private mBlurView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field private mDownX:F

.field private mDualViewEnabled:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mHasCutOutDisplay:Z

.field private mIsLockscreen:Z

.field private mIsSeekBarTouching:Z

.field private mIsSwipe:Z

.field private mIsTouchDown:Z

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRowContainer:Landroid/view/ViewGroup;

.field private mRowOutlineStrokeView:Landroid/view/View;

.field private mStartProgress:Z

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mSwipeDistance:F

.field private mTitleView:Landroid/widget/TextView;

.field private final mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

.field private mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTouchDownExpandButton:Z

.field private mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field private mVolumePanelDualView:Landroid/view/ViewGroup;

.field private final mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field private mVolumePanelView:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$7x1mqY8Z9uuFQrWOx-H30BfMLMQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BdmmbMp8Xl_4fiObs8syMaTpOFM(Lcom/android/systemui/volume/view/VolumePanelView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initExpandButton$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dkd7_aVdfaaBj6FK8Tz0YgicEiw(Lcom/android/systemui/volume/view/VolumePanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$onDismiss$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GHb4sPYjuE0Uywi2XOh9JQx6v1Y(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$addVolumeRows$7(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgPaYcJTV_B7uSJCn802p91vE0Q(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$dispatch$9(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P7u1Sdi_xEnld1Rw-qlJw5AfraY(Lcom/android/systemui/volume/view/VolumePanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SkW2pQVaefaLJ2dWRlIGZuKIgSE(Lcom/android/systemui/volume/view/VolumePanelView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YwltvwsMApVUu_wew1Eqph-0uL8(Lcom/android/systemui/volume/view/VolumePanelView;)[I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$3()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c-EIbmm1_HFhB9Qx3ZTwVyFXDIQ()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ndCl6MgXA-R09cOgcpmGYlyfMKA(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$addVolumeRows$6(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oWbhlOOm-hs5pS7Z-65rabGltWI(Lcom/android/systemui/volume/view/VolumePanelView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uaD38WJNqq0--yFlPaT_89NPW5I(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$updateVolumeTitle$12(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBkbYyGh0Gxey385g1mNAp4QQjI(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$updateVolumeTitle$11(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/view/VolumePanelView;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 100
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 102
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    .line 103
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 104
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 105
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 106
    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ToastWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    .line 107
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 108
    const-class v0, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BlurEffect;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 109
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->setCutoutSpec()V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->initDialog()V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->initView()V

    return-void
.end method

.method private addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 300
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 301
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 302
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dismissSinglePanel()V
    .locals 0

    .line 564
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 566
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method private getStreamCommonLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 2

    .line 594
    :try_start_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p1

    .line 595
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 1

    .line 583
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->getStreamCommonLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getWindowY(IZZ)I
    .locals 5

    .line 159
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 160
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 161
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 162
    :goto_0
    sget-boolean v2, Lcom/android/systemui/volume/view/VolumePanelView;->IS_TABLET:Z

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    if-eqz p2, :cond_1

    if-nez v0, :cond_3

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050209

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->volume_seekbar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    .line 170
    sget-boolean v2, Lcom/android/systemui/volume/view/VolumePanelView;->IS_TABLET:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    int-to-float p2, v1

    div-float/2addr p2, v3

    sub-float/2addr v0, p2

    goto :goto_3

    :cond_5
    if-nez v2, :cond_9

    if-eqz p2, :cond_6

    goto :goto_3

    .line 175
    :cond_6
    sget-boolean p2, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    if-eqz p2, :cond_7

    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    .line 176
    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    goto :goto_2

    :cond_8
    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    :goto_2
    mul-float/2addr v0, p2

    goto :goto_4

    :cond_9
    :goto_3
    div-float/2addr v0, v3

    .line 180
    :goto_4
    iget-boolean p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz p2, :cond_a

    .line 181
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->volume_panel_dual_view_top_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 182
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->volume_panel_dual_view_elevation_padding_vertical:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    :cond_a
    int-to-float p0, p1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private initDialog()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    .line 120
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0128

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7e4

    .line 130
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    .line 131
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "VolumePanelView"

    .line 132
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 133
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 134
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->volume_panel_view_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    if-eqz p0, :cond_0

    .line 136
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x4000400

    or-int/2addr p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 137
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 139
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initExpandButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_volume_expand:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 189
    sget v0, Lcom/android/systemui/R$layout;->volume_panel_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 190
    sget v0, Lcom/android/systemui/R$id;->volume_panel_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    .line 191
    sget v0, Lcom/android/systemui/R$id;->volume_panel_dual_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    .line 192
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->volume_panel_dual_view_contents:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    sget-object v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelView$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->volume_panel_swipe_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mSwipeDistance:F

    return-void
.end method

.method private initViewLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 5

    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->volume_panel_row_container:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    .line 269
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->volume_panel_expand_button:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    .line 270
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->volume_panel_dual_view_title:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    .line 271
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->volume_panel_view_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->volume_panel_dual_view_background:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->volume_panel_expand_view_background_stroke:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg_reduce_transparency:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 279
    :cond_1
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 283
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 280
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg_blur:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 287
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelDualView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->volume_panel_row_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    .line 291
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    :goto_2
    return-void
.end method

.method private initWindowLayout()V
    .locals 9

    .line 143
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->volume_seekbar_elevation_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 148
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->volume_panel_screen_width_threshold:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    if-le v2, v7, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    .line 150
    :goto_1
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    const/4 v2, 0x5

    :goto_2
    or-int/lit8 v2, v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 152
    invoke-direct {p0, v1, v4, v5}, Lcom/android/systemui/volume/view/VolumePanelView;->getWindowY(IZZ)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    .line 296
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNightMode()Z
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 400
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 401
    aget v1, p0, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    aget p2, p0, v2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    aget p0, p0, v2

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private synthetic lambda$addVolumeRows$6(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 301
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$addVolumeRows$7(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_row_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumeRowView;

    .line 304
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    move-object v1, v0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/volume/view/VolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 306
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActiveStream:I

    .line 309
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-nez p1, :cond_1

    .line 310
    sget p1, Lcom/android/systemui/R$id;->volume_seekbar_outline_stroke:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowOutlineStrokeView:Landroid/view/View;

    .line 311
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$dispatch$9(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 415
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 416
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initExpandButton$8(Landroid/view/View;)V
    .locals 2

    .line 328
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 329
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 193
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p1, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v0
.end method

.method private static synthetic lambda$initView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initView$2()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$initView$3()[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 208
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 209
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 210
    aget v1, v0, v3

    int-to-double v4, v1

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v1, v4

    aput v1, v0, v3

    .line 211
    aget v1, v0, v2

    int-to-double v3, v1

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-double v5, p0

    mul-double/2addr v5, v8

    sub-double/2addr v3, v5

    double-to-int p0, v3

    aput p0, v0, v2

    goto :goto_0

    .line 213
    :cond_0
    aget v1, v0, v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v4, :cond_1

    const/4 v2, -0x1

    :cond_1
    mul-int/2addr p0, v2

    sub-int/2addr v1, p0

    aput v1, v0, v3

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$initView$4()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V

    return-void
.end method

.method private synthetic lambda$initView$5(Landroid/content/DialogInterface;)V
    .locals 1

    .line 202
    sget-object p1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda7;

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->volume_panel_dual_blur:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->volume_panel_blur:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mBlurView:Landroid/widget/ImageView;

    .line 204
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_1

    .line 205
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVolumeDualViewShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVolumePanelShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onDismiss$10(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismiss()V

    goto :goto_0

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismissSinglePanel()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateVolumeTitle$11(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 578
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateVolumeTitle$12(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActiveStream:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    :cond_0
    return-void
.end method

.method private setCutoutSpec()V
    .locals 5

    const/4 v0, 0x0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_mainBuiltInDisplayCutout"

    const-string/jumbo v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 247
    :catch_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    :goto_2
    return-void
.end method

.method private showVolumeCSD100WarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 660
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 661
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 663
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 664
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_MINI_SVIEW_WALLET_COVER:I

    if-ne p1, v0, :cond_0

    .line 665
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 668
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 669
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_SIDE_VIEW_COVER:I

    if-ne p1, v0, :cond_1

    .line 670
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 673
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 674
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_CAMERA_VIEW_COVER:I

    if-ne p1, v0, :cond_3

    .line 675
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 676
    invoke-virtual {v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 679
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    .line 682
    :cond_2
    new-instance p1, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;-><init>(Landroid/content/Context;)V

    .line 683
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 684
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/view/VolumeCSD100WarningDialog;->initWindow(Z)V

    .line 685
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showVolumeLimiterDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 632
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 633
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 634
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 635
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_MINI_SVIEW_WALLET_COVER:I

    if-ne p1, v0, :cond_0

    .line 636
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 639
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 640
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_SIDE_VIEW_COVER:I

    if-ne p1, v0, :cond_1

    .line 641
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 644
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 645
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_CAMERA_VIEW_COVER:I

    if-ne p1, v0, :cond_3

    .line 646
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 647
    invoke-virtual {v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 650
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    .line 653
    :cond_2
    new-instance p1, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;-><init>(Landroid/content/Context;)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mToastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/volume/view/VolumeLimiterWarningDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/util/ToastWrapper;)V

    .line 655
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showVolumeSafetyWarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 603
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 604
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 605
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_2

    .line 606
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_MINI_SVIEW_WALLET_COVER:I

    if-ne p1, v0, :cond_0

    .line 607
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningWalletMiniDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 610
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 611
    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_SIDE_VIEW_COVER:I

    if-ne p1, v0, :cond_1

    .line 612
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 615
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 616
    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_CAMERA_VIEW_COVER:I

    if-ne p1, v0, :cond_3

    .line 617
    new-instance p1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 618
    invoke-virtual {v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 621
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    .line 624
    :cond_2
    new-instance p1, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;-><init>(Landroid/content/Context;)V

    .line 625
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;->setDependencies(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 626
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/view/VolumeSafetyWarningDialog;->initWindow(Z)V

    .line 627
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 576
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 577
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda10;-><init>(I)V

    .line 578
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;)V

    .line 579
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 2

    .line 502
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_panel_view_title:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    .line 509
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 510
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 558
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismissSinglePanel()V

    .line 559
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 560
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 414
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 421
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 57
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 336
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v3, 0x0

    .line 336
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_4

    .line 387
    :cond_0
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 388
    invoke-virtual {p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 387
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 390
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownExpandButton:Z

    .line 391
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStartProgress:Z

    return v2

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 374
    iget v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownX:F

    sub-float v4, v0, v4

    .line 375
    iget-boolean v5, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTouchDown:Z

    if-eqz v5, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mSwipeDistance:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStartProgress:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsLockscreen:Z

    if-nez v4, :cond_a

    .line 376
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTouchDown:Z

    .line 377
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    .line 378
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownX:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownX:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 379
    :goto_1
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_COLLAPSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    goto :goto_2

    .line 380
    :cond_4
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    :goto_2
    invoke-direct {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 381
    invoke-virtual {v4, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 379
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto/16 :goto_4

    .line 352
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStartProgress:Z

    if-nez v0, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownExpandButton:Z

    if-eqz v4, :cond_6

    .line 353
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/systemui/volume/view/VolumePanelView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 355
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_3

    .line 358
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSeekBarTouching:Z

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    .line 359
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 360
    invoke-virtual {p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 359
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumePanelView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v2

    .line 364
    :cond_7
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownExpandButton:Z

    .line 365
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStartProgress:Z

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    if-eqz v0, :cond_a

    .line 367
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    return v2

    .line 342
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsLockscreen:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v0, v1, v4}, Lcom/android/systemui/volume/view/VolumePanelView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 343
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownExpandButton:Z

    .line 345
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDownX:F

    .line 346
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSwipe:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsTouchDown:Z

    .line 395
    :cond_a
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public disposeActionObserver()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 536
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->disposeActionObserver()V

    return-void
.end method

.method public disposeStateObservable()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 428
    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelView$2;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 495
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->showVolumeCSD100WarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_0

    .line 491
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->showVolumeLimiterDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_0

    .line 487
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->showVolumeSafetyWarningDialog(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_0

    .line 481
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->resetVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 472
    :pswitch_4
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSeekBarTouching:Z

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_0

    .line 463
    :pswitch_5
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsSeekBarTouching:Z

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz v0, :cond_1

    .line 465
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    goto :goto_0

    .line 459
    :pswitch_6
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStartProgress:Z

    goto :goto_0

    .line 453
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismiss()V

    goto :goto_0

    .line 444
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/view/VolumePanelView;->onDismiss(Z)V

    .line 445
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelExpandView;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHasCutOutDisplay:Z

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;Z)V

    .line 447
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 438
    :pswitch_9
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/view/VolumePanelView;->onDismiss(Z)V

    goto :goto_0

    .line 430
    :pswitch_a
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mIsLockscreen:Z

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public onDismiss(Z)V
    .locals 1

    .line 540
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/VolumePanelView;Z)V

    .line 547
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 549
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 548
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVolumeDualViewHideAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 552
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 551
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVolumePanelDismissAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 253
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 254
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 255
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mDualViewEnabled:Z

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->initWindowLayout()V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->initViewLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->initExpandButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public setStore()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 521
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->initDependencies(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/res/Resources;)V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
