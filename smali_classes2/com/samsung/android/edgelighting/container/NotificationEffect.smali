.class public Lcom/samsung/android/edgelighting/container/NotificationEffect;
.super Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;,
        Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;,
        Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;
    }
.end annotation


# static fields
.field public static final mBlockNotiTouch_for_NA:Z


# instance fields
.field private final DEFAULT_EDGE_COLOR:I

.field private FREEFORM_HEIGHT_RATIO:F

.field private FREEFORM_WIDTH_RATIO:F

.field protected final MSG_DISMISS_CONTAINER:I

.field protected final MSG_HIDE_ITEM:I

.field protected final MSG_HIDE_LIGHTING_ITEM:I

.field protected final MSG_SHOW_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private mAODManager:Lcom/samsung/android/aod/AODManager;

.field private mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

.field protected mCompute:Ljava/lang/Object;

.field protected mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

.field protected mConvertColor:I

.field mEdgeEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

.field protected mEffectAlpha:F

.field protected mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHandler:Landroid/os/Handler;

.field protected mInfiniteLighting:Z

.field private mIsActionEnable:Z

.field private mIsActivity:Z

.field mIsCenterPositionSpecialEffect:Z

.field mIsEdgeFrameEffect:Z

.field mIsEdgeSpecialEffect:Z

.field protected mIsShowMorphView:Z

.field protected mKgm:Landroid/app/KeyguardManager;

.field protected mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

.field protected mNotificationContainer:Landroid/widget/RelativeLayout;

.field private mNotificationKey:Ljava/lang/String;

.field protected mPendingIntent:Landroid/app/PendingIntent;

.field protected mPm:Landroid/os/PowerManager;

.field mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

.field mRepeatCount:I

.field private mShowOnlyToast:Z

.field protected mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

.field mSpecialHeight:I

.field mSpecialWidth:I

.field mStartSpecialEffectAfterToastFinished:Z

.field private mToastDuration:J

.field mTouchableRec:Landroid/graphics/Rect;

.field protected mUsingBlackBG:Z


# direct methods
.method public static synthetic $r8$lambda$VMxnlDpShr1e_BNylrz65EI9lZ4(Lcom/samsung/android/edgelighting/container/NotificationEffect;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->lambda$onSizeChanged$0(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_BlockDoubleTapNotiOnLockScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 76
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const p1, -0xf0551d

    .line 78
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->DEFAULT_EDGE_COLOR:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mUsingBlackBG:Z

    .line 100
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mShowOnlyToast:Z

    .line 102
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mInfiniteLighting:Z

    const-wide/16 v1, 0xfa0

    .line 106
    iput-wide v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mToastDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mEffectAlpha:F

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    const/4 p1, 0x3

    .line 133
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mRepeatCount:I

    .line 175
    new-instance v1, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    const v1, 0x3f2b851f    # 0.67f

    .line 339
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 341
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 908
    iput v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_SHOW_ITEM:I

    const/4 v0, 0x2

    .line 909
    iput v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_HIDE_ITEM:I

    .line 910
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_DISMISS_CONTAINER:I

    const/4 p1, 0x4

    .line 911
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_HIDE_LIGHTING_ITEM:I

    .line 915
    new-instance p1, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    .line 994
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 998
    new-instance p1, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const p1, -0xf0551d

    .line 78
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->DEFAULT_EDGE_COLOR:I

    const/4 p2, 0x1

    .line 96
    iput-boolean p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mUsingBlackBG:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mShowOnlyToast:Z

    .line 102
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mInfiniteLighting:Z

    const-wide/16 v0, 0xfa0

    .line 106
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mToastDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mEffectAlpha:F

    .line 114
    iput-boolean p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    const/4 p1, 0x3

    .line 133
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mRepeatCount:I

    .line 175
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    const v0, 0x3f2b851f    # 0.67f

    .line 339
    iput v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 341
    iput v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 908
    iput p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_SHOW_ITEM:I

    const/4 p2, 0x2

    .line 909
    iput p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_HIDE_ITEM:I

    .line 910
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_DISMISS_CONTAINER:I

    const/4 p1, 0x4

    .line 911
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->MSG_HIDE_LIGHTING_ITEM:I

    .line 915
    new-instance p1, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    .line 994
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 998
    new-instance p1, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Landroid/graphics/Rect;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->freeformLaunchBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismissToTurnToHeadsUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActivity:Z

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/edgelighting/container/NotificationEffect;Landroid/content/Context;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/edgelighting/container/NotificationEffect;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->wakeUpDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->swipeDeleteNotification(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/edgelighting/container/NotificationEffect;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPopupWindow(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method private dismissToTurnToHeadsUp()V
    .locals 8

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 641
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 642
    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateBlurState(Z)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->disappear(J)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " remove edge  tsp  rect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-string v7, "brief_popup"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->unregisterAODReceiver()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    .line 658
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->onDestroy()V

    .line 660
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->stopAnimation()V

    return-void
.end method

.method private freeformLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 347
    sget-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TABLET_DEVICE:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    .line 348
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 349
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    .line 350
    :cond_0
    sget-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_FOLDABLE:Z

    if-eqz v0, :cond_2

    .line 351
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isFolded()Z

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    if-eqz v0, :cond_1

    const v0, 0x3f79999a    # 0.975f

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 352
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    .line 354
    :cond_2
    iget v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    const v3, 0x3f59999a    # 0.85f

    if-ge v0, v2, :cond_3

    .line 355
    iput v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 356
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    .line 358
    :cond_3
    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 359
    iput v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 363
    :goto_1
    iget v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 364
    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    int-to-float v3, v2

    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    mul-float/2addr v3, p0

    float-to-int p0, v3

    sub-int/2addr v0, v1

    .line 367
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, p0

    .line 368
    div-int/lit8 v2, v2, 0x2

    .line 371
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr p0, v2

    invoke-direct {v3, v0, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1202
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isSupportDoubleTapToWakeUp()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "double_tab_to_wake_up"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private isSupportDoubleTapToWakeUp()Z
    .locals 3

    .line 1207
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->get()Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1209
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v0, "isSupportDoubleTapToWakeUp: fail to get IM"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1212
    :cond_0
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->get()Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->semCheckInputFeature(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->get()Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->SEM_INPUT_FEATURE_AOT:I

    and-int/2addr v0, v2

    .line 1213
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->get()Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/edgelighting/reflection/hardware/RefInputManager;->SEM_INPUT_FEATURE_AOT:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1214
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportDoubleTapToWakeUp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$onSizeChanged$0(II)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/MorphView;->updateRefreshUI(II)V

    return-void
.end method

.method private launchPopupWindow(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFling"
        }
    .end annotation

    if-nez p1, :cond_3

    .line 272
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x1d4c0

    if-lt p1, v0, :cond_3

    .line 273
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v0, "isActivity: false : pendingintent is null "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v1

    goto :goto_1

    .line 278
    :cond_0
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getPendingIntent()Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;->isActivity(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActivity: false "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onLaunchPopupView(Z)V

    :cond_2
    return-void

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 290
    new-instance p1, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$2;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    .line 335
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private startFrameEffect()V
    .locals 8

    .line 1240
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsEdgeFrameEffect:Z

    const/4 v1, 0x0

    const-string v2, "**"

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    new-instance v5, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 1243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1244
    iget-object v7, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mEdgeEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isMultiResolutionSupoorted()Z

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v1

    .line 1243
    :goto_0
    invoke-static {v6, v7}, Lcom/samsung/android/edgelighting/utils/Utils;->getFinalRadius(Landroid/content/Context;Z)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 1242
    invoke-virtual {v0, v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1252
    :cond_1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1253
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v4, Lcom/airbnb/lottie/model/KeyPath;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v5, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v5, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1256
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1259
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1260
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mRepeatCount:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1265
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private startSpecialEffect()V
    .locals 11

    .line 1269
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1270
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsCenterPositionSpecialEffect:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    const/4 v2, -0x1

    .line 1271
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1274
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsEdgeSpecialEffect:Z

    const-string v2, "**"

    if-eqz v1, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getRootRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1277
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 1278
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 1279
    iget-object v5, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v6, Lcom/airbnb/lottie/model/KeyPath;

    const-string v7, "Rectangle Path 1"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v8, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    new-instance v9, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v10, Landroid/graphics/PointF;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v10, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1281
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v4, Lcom/airbnb/lottie/model/KeyPath;

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    new-instance v6, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {v7, v8, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1285
    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1286
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v4, Lcom/airbnb/lottie/model/KeyPath;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v5, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v5, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 1289
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setZ(F)V

    .line 1290
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1291
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 1294
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mRepeatCount:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1295
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1296
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private stopAnimation()V
    .locals 5

    .line 1412
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 1413
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1422
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v4, :cond_2

    .line 1423
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move v2, v0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1433
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method private swipeDeleteNotification(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeftSwipe"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    .line 1068
    :cond_0
    iget p1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_0
    int-to-float p1, p1

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->deleteNotification(F)V

    .line 1073
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p0, :cond_1

    .line 1074
    invoke-interface {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onSwipeNotification()V

    :cond_1
    return-void
.end method

.method private wakeUpDevice(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUpDevice by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->performWakeUpBooster()V

    .line 1181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->get()Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->WAKE_UP_REASON_KEY:I

    const-string v2, "[Brief] WakeUp and show keyguard"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTouchInsector()V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1046
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 1047
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 8

    .line 617
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " remove edge  tsp  rect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-string v7, "brief_popup"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->unregisterAODReceiver()V

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    .line 633
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->onDestroy()V

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->stopAnimation()V

    return-void
.end method

.method protected dismissToastPopup()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->stopAnimation()V

    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mStartSpecialEffectAfterToastFinished:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->startSpecialEffect()V

    :cond_0
    return-void
.end method

.method public getScreenSizeRateFromPhysical()F
    .locals 4

    .line 865
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 869
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 871
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 873
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getIWindowManagerStub()Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getServiceManager()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;

    move-result-object v1

    const/high16 v2, 0x44b40000    # 1440.0f

    if-eqz v1, :cond_0

    .line 881
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    .line 883
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 885
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    :cond_0
    cmpl-float v1, v2, p0

    if-ltz v1, :cond_1

    div-float v0, v2, p0

    :cond_1
    return v0
.end method

.method public init()V
    .locals 4

    .line 155
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->init()V

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 159
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_notification_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 163
    sget v0, Lcom/samsung/android/edgelighting/R$id;->noti_morph_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edgelighting/view/MorphView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    .line 165
    sget v0, Lcom/samsung/android/edgelighting/R$id;->notification_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 167
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/edgelighting/container/NotificationEffect$GestureListener;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;Lcom/samsung/android/edgelighting/container/NotificationEffect$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->setScreenSize(II)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->addPopupListener(Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->getProxyInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    return-void
.end method

.method public isTouchable()Z
    .locals 2

    .line 1173
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 1174
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected launchPendingIntent()V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_5

    .line 383
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v1, "[Brief] Wakeup and send intent after unlock"

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 388
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_3

    .line 392
    sget-boolean v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "dismissIfInsecure"

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 393
    :try_start_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 395
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v2, "notificationKey"

    .line 400
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_8

    .line 405
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onClickToast()V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 408
    sget-boolean v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    if-eqz v1, :cond_6

    .line 409
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "double touch to root view"

    .line 411
    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->wakeUpDevice(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v1, "[Brief] Wakeup and send intent"

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_8

    .line 422
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onClickToast()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 428
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending Intent Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 596
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 598
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAttached Window add Touch Insector : mIsShowMorphView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screen_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", aod_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->addTouchInsector()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 606
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDetachedFromWindow Window remove Touch Insector : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screen_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", aod_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->removeTouchInsector()V

    :cond_0
    return-void
.end method

.method protected onFlickDownAnimation()V
    .locals 15

    .line 1080
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1082
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 v2, 0x1

    new-array v3, v2, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    aput v4, v3, v6

    const-string/jumbo v4, "translationY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1083
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v7, v2, [F

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    aput v8, v7, v6

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1084
    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v7, v2, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v6

    const-string v9, "alpha"

    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1085
    iget-object v7, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v10, v2, [F

    const/4 v11, 0x0

    aput v11, v10, v6

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1088
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const v12, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0xc8

    .line 1089
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1090
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1091
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x64

    .line 1093
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1094
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0x12c

    .line 1095
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1097
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1098
    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v3, v1, v6

    aput-object v7, v1, v2

    .line 1101
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1103
    new-instance v1, Lcom/samsung/android/edgelighting/container/NotificationEffect$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$6;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1118
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onFlickUpAnimation()V
    .locals 15

    .line 1123
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 v2, 0x1

    new-array v3, v2, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    aput v4, v3, v6

    const-string/jumbo v4, "translationY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1126
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v7, v2, [F

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    aput v8, v7, v6

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1127
    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v7, v2, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v6

    const-string v9, "alpha"

    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1128
    iget-object v7, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-array v10, v2, [F

    const/4 v11, 0x0

    aput v11, v10, v6

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1131
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const v12, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0xc8

    .line 1132
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1133
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x64

    .line 1136
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1137
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0x12c

    .line 1138
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1140
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v10, v11, v12, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1141
    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v3, v8, v6

    aput-object v4, v8, v2

    aput-object v1, v8, v5

    .line 1145
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v7, v3, v2

    .line 1146
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1148
    new-instance v1, Lcom/samsung/android/edgelighting/container/NotificationEffect$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$7;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-nez p3, :cond_0

    return-void

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSizeChanged w : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " oldH : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->updateEffectLocation()V

    .line 247
    iget-object p3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->disappear(J)V

    .line 248
    new-instance p3, Lcom/samsung/android/edgelighting/container/NotificationEffect$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;II)V

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p3, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec_e-pen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPendingIntent()V

    const/4 p0, 0x0

    return p0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performWakeUpBooster()V
    .locals 3

    .line 1186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DEVICE_WAKEUP"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mWakeUpBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v0, "AOD_DEVICE_WAKEUP.acquire is failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerAODReceiver()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;Lcom/samsung/android/edgelighting/container/NotificationEffect$1;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 799
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    const-string v3, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public removeTouchArea()V
    .locals 1

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->removeTouchRegion()V

    :cond_0
    return-void
.end method

.method public removeTouchInsector()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mCompute:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected requestHideEffectView()V
    .locals 0

    return-void
.end method

.method public setCenterPosition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "center"
        }
    .end annotation

    .line 1395
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsCenterPositionSpecialEffect:Z

    return-void
.end method

.method public setDisableShowMorphView()V
    .locals 1

    const/4 v0, 0x0

    .line 818
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "setEdgeEffectInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " dur="

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 733
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mEdgeEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    .line 735
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getInfiniteLighting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mInfiniteLighting:Z

    .line 737
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo([Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    .line 739
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->hasActionButton()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->showExpandButton(Z)V

    .line 742
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isGrayScaled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setIsGrayScaled(Z)V

    const-string v1, " hasActionButton="

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->hasActionButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " isGrayScaled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isGrayScaled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 746
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    const-string v1, " color="

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getFillFullColor()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setFillToastColor(Z)V

    .line 752
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getToastStyle()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 753
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->changeToastStyle(I)V

    .line 756
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mShowOnlyToast:Z

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getShowOnlyToast()Z

    move-result v3

    if-eq v1, v3, :cond_3

    .line 757
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getShowOnlyToast()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mShowOnlyToast:Z

    .line 760
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mUsingBlackBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v3

    if-eq v1, v3, :cond_4

    .line 761
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mUsingBlackBG:Z

    .line 764
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mUsingBlackBG:Z

    if-eqz v1, :cond_5

    .line 765
    iput-boolean v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    .line 768
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getToastDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 769
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getToastDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mToastDuration:J

    .line 772
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 773
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    .line 776
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 777
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mEffectAlpha:F

    .line 780
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEdgeLightingAction()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    const-string v1, " notificationKey="

    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " actionEnable= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 782
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEffect$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$3;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setExpandButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEdgeEffectInfo([Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tickerText",
            "appIcon",
            "pendingIntent"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 705
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 706
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->setNotiText([Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p1, :cond_0

    .line 709
    invoke-interface {p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onExtendDuration()V

    .line 713
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    goto :goto_0

    .line 715
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    :goto_0
    if-eqz p2, :cond_2

    .line 719
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    .line 720
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/edgelighting/view/MorphView;->setNotiIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 724
    invoke-virtual {p0, p3}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setPendingIntent(Landroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method

.method public setEffectColors([I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 674
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->setEffectColors([I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 677
    array-length v1, p1

    if-lez v1, :cond_0

    const/high16 v1, -0x1000000

    .line 678
    aget p1, p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 683
    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-static {v1, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 685
    aget v2, p1, v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    const-string v4, " B : "

    const-string v5, " S : "

    const/4 v6, 0x2

    if-gtz v2, :cond_1

    aget v2, p1, v6

    const v7, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_1

    const v2, -0x190503

    .line 686
    iput v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    .line 687
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " White color : H : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v6

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 688
    aget v7, p1, v1

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_2

    aget v2, p1, v1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_2

    aget v2, p1, v6

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const v2, -0xc1bcb5

    .line 689
    iput v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    .line 690
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Black color : H : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v6

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/MorphView;->setToastColor(I)V

    return-void
.end method

.method public setFrameEffect(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1226
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1228
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setIsEdgeFrameEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 1399
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsEdgeFrameEffect:Z

    return-void
.end method

.method public setIsEdgeSpecialEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 1403
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsEdgeSpecialEffect:Z

    return-void
.end method

.method setIsMultiResolutionSupoorted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupported"
        }
    .end annotation

    return-void
.end method

.method setIsNoFrame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNoFrame"
        }
    .end annotation

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingIntent"
        }
    .end annotation

    .line 898
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1407
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mRepeatCount:I

    return-void
.end method

.method public setSpecialEffect(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1233
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1235
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setSpecialEffectSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 1386
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialWidth:I

    .line 1387
    iput p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialHeight:I

    return-void
.end method

.method public setStartSpecialEffectAfterToastFinished(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "after"
        }
    .end annotation

    .line 1391
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mStartSpecialEffectAfterToastFinished:Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->showLightingPopup()V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mFrameEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->startFrameEffect()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mSpecialEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mStartSpecialEffectAfterToastFinished:Z

    if-nez v0, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->startSpecialEffect()V

    :cond_1
    return-void
.end method

.method protected showLightingPopup()V
    .locals 7

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 577
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 579
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getMaxWidth()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getMinWidth()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    const-string v6, "brief_popup"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->registerAODReceiver()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 583
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->addTouchInsector()V

    .line 589
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->showTickerTextAnimation()V

    :cond_2
    return-void
.end method

.method protected showTickerTextAnimation()V
    .locals 3

    .line 956
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected startToastPopupAnimation()V
    .locals 0

    return-void
.end method

.method public unregisterAODReceiver()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 808
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterAODReceiver: unable to unregister Receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method updateEffectLocation()V
    .locals 0

    return-void
.end method

.method public updateMargin()V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMargin()V

    .line 1039
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->addTouchInsector()V

    :cond_0
    return-void
.end method

.method public updateText(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDirty"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    :cond_0
    return-void
.end method
