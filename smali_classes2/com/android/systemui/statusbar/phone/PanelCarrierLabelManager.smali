.class public Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;
.super Ljava/lang/Object;
.source "PanelCarrierLabelManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;,
        Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;,
        Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mInsetNavigationBarBottomHeight:I

.field private mIsFadingIn:Z

.field private mIsFadingOut:Z

.field private mLabelAlphaAnimStarted:Z

.field private mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

.field private mLastDensityDpi:I

.field private mLastOrientation:I

.field private mLastSemMobileKeyboardCovered:I

.field private mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

.field private mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

.field private mPreviousVisible:Z

.field private mPrvAlpha:F


# direct methods
.method public static synthetic $r8$lambda$91MEpzKO_Qv-43IamMf5xRWr0yc(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$updateNavBarHeight$3(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EGEb4x3Eye3VOi73Ah2SYOahR2Q(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YEr11Iy-GNRlR5GXdG3ReRTtq5k(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$setTextForCommon$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$en0Zfn4JetJhad9rp5scW68VzhI(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$setTextForSlot1$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWJemhBmEUtNVgciwLDYui3EQCw(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$setTextForSlot2$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQFJ66xkDfWblsQqYxZodshlERg(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$updateLayoutParamHeight$2(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xh551WSQNi7QVuDVvyPQpxrbWlw(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$onAttachedToWindow$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    .line 74
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    .line 75
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 179
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    const/4 v1, 0x1

    .line 180
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    .line 299
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getViewContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    .line 90
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    return-void
.end method

.method private IsAnimationJustFinished(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 222
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

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

.method private IsAnimationJustStarted(F)Z
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 219
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

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

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)F
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPrvAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustStarted(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;F)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustFinished(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;FF)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->compareFadingInAndOut(FF)Z

    move-result p0

    return p0
.end method

.method private animateLabelAlpha(Landroid/view/View;Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 198
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    .line 199
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    .line 200
    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3f147ae1    # 0.58f

    invoke-direct {p2, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method private attachPanelCarrierLabelView()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    const-string v1, "PanelCarrierLabelManager"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 116
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->PANEL_MULTILINE_VIEW:Z

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 117
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "attachPanelCarrierLabelView(MULTI-LINE)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->sec_panel_carrier_label_multi_line_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelMultiLineView;

    .line 120
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    goto :goto_0

    .line 123
    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->PANEL_CARRIERINFO_DATAUSAGE:Z

    const/16 v5, 0x11

    if-eqz v0, :cond_4

    .line 124
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "attachPanelCarrierLabelView(COMMON for DATAUSAGE)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    goto :goto_0

    .line 132
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "attachPanelCarrierLabelView(COMMON)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    :goto_0
    return-void

    .line 112
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachPanelCarrierLabelView() - but panel parent view is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private compareFadingInAndOut(FF)Z
    .locals 3

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->IsAnimationJustFinished(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 232
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    goto :goto_1

    .line 235
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    goto :goto_1

    .line 229
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    .line 230
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

    .line 238
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method private isFadingAnimationRunning()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingIn:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mIsFadingOut:Z

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

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->onPanelConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelViewColor()V

    return-void
.end method

.method private synthetic lambda$setTextForCommon$4(Ljava/lang/String;)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTextForSlot1$5(Ljava/lang/String;)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelSlot1Text(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTextForSlot2$6(Ljava/lang/String;)V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->setLabelSlot2Text(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParamHeight$2(Landroid/view/ViewGroup;)V
    .locals 3

    .line 277
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 278
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz p0, :cond_0

    .line 280
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->getDefaultHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 282
    :cond_0
    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, v1, :cond_2

    .line 283
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayoutParamHeight() newHeight:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateNavBarHeight$3(Landroid/view/ViewGroup;)V
    .locals 1

    .line 306
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private updateLabelViewColor()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_1

    const p0, -0x61000001

    .line 266
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->updateTextColor(I)V

    goto :goto_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->isDarkPanelBgColor()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_3

    const v0, 0x6bffffff

    goto :goto_1

    :cond_3
    const/high16 v0, 0x5c000000

    :goto_1
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->updateTextColor(I)V

    :goto_2
    return-void
.end method

.method private updateLayoutParamHeight()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PanelCarrierLabelManager"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " InsetNavigationBarBottomHeight:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    if-eqz p3, :cond_0

    .line 403
    invoke-interface {p3}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", parentAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", parentVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (V0-I4-G8)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", parentHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", parentPaddingBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    if-eqz p3, :cond_1

    .line 413
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->getDumpText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz p3, :cond_2

    .line 416
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", childTextView:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;->getDumpText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->attachPanelCarrierLabelView()V

    .line 99
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->registerPanelCarrierLabelManager(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;)V

    .line 101
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "PanelCarrierLabelManager"

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 103
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 146
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->unregisterPanelCarrierLabelManager()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 151
    :cond_0
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "PanelCarrierLabelManager"

    invoke-interface {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->onDetachedFromWindow()V

    return-void
.end method

.method public onPanelConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 246
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v2, v3, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    .line 250
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility(Z)V

    .line 253
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastDensityDpi:I

    .line 254
    iget p1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLayoutParamHeight()V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelViewColor()V

    return-void
.end method

.method public setTextForCommon(Ljava/lang/String;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextForCommon(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setTextForSlot1(Ljava/lang/String;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 384
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextForSlot1(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setTextForSlot2(Ljava/lang/String;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;

    if-eqz v0, :cond_1

    .line 392
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextForSlot2(text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelCarrierLabelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updateLabelAlphaVisibility(F)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v1

    .line 184
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    .line 186
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v0

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    if-eqz v0, :cond_1

    .line 188
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    .line 189
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 191
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLabelAlphaAnimStarted:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateLabelVisibility()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility(Z)V

    return-void
.end method

.method protected updateLabelVisibility(Z)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->needToShowCarrierLabelByState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mLastOrientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 164
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPanelCarrierDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    .line 165
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->needToShowCarrierLabelByExpansion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 166
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    if-ne v2, v0, :cond_1

    if-eqz p1, :cond_5

    .line 167
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eq v2, v0, :cond_2

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLabelVisibility(forceUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") preV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " >> newV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFadingAnimationRunning()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->isFadingAnimationRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PanelCarrierLabelManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->isFadingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_5

    .line 174
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPreviousVisible:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public updateNavBarHeight(I)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mPanelController:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;->getPanelCarrierLabelParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->updateSettingsAndCheckChanges()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNavBarHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->getDumpText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PanelCarrierLabelManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    .line 306
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLayoutParamHeight()V

    :cond_2
    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility()V

    return-void
.end method
