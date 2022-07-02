.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private final mAnimationUtil:Lcom/android/systemui/power/ChargerAnimationUtil;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChargingType:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextContainer:Landroid/widget/LinearLayout;

.field private mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mChargingIconView:Landroid/widget/ImageView;

.field private mCircleBackgroundView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mDisplayStateLock:Landroid/os/IBinder;

.field private mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mIsAodOrLockScreen:Z

.field private mPercentTextView:Landroid/widget/TextView;

.field private mPercentTextViewRtl:Landroid/widget/TextView;

.field private mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mStartedInDoze:Z


# direct methods
.method public static synthetic $r8$lambda$0MybDRcsL6v6C60UzWJNPHsVz7w(Lcom/android/systemui/power/ChargerAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->lambda$setBackGroundAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    .line 68
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 69
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 73
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 78
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string p2, "power"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    .line 92
    new-instance p1, Lcom/android/systemui/power/ChargerAnimationUtil;

    invoke-direct {p1}, Lcom/android/systemui/power/ChargerAnimationUtil;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationUtil:Lcom/android/systemui/power/ChargerAnimationUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/ChargerAnimationView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/power/ChargerAnimationView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/hardware/display/IDisplayManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/ChargerAnimationView;Landroid/hardware/display/IDisplayManager;)Landroid/hardware/display/IDisplayManager;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/IBinder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/doze/PluginAODManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object p0
.end method

.method private getBatteryLevelString(I)Ljava/lang/String;
    .locals 3

    .line 348
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_battery_meter_format:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%"

    const-string v0, ""

    .line 349
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    .line 350
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setBackGroundAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->semSetBlurRadius(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->semSetBlurRadius(I)V

    :goto_0
    return-void
.end method

.method private setBatteryChargingIconAnimation()V
    .locals 12

    .line 167
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationUtil:Lcom/android/systemui/power/ChargerAnimationUtil;

    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChargingType:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/ChargerAnimationUtil;->getChargingIconId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 172
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    const-string/jumbo v5, "scaleX"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0xe9

    .line 174
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    iget-boolean v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    if-eqz v4, :cond_0

    const-wide/16 v8, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 176
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    const-string/jumbo v9, "scaleY"

    invoke-static {v4, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v6, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x10b

    .line 181
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v10, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v11, v2, [F

    fill-array-data v11, :array_3

    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 184
    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v7, v2, [F

    fill-array-data v7, :array_4

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v7, 0xb7

    .line 187
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    invoke-static {v5, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_2
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_3
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_4
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBatteryLevelText()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->charger_anim_text_margin_start:I

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$dimen;->charger_anim_battery_text_size:I

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->getBatteryLevelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 324
    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->checkExceptionalLanguage()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "%"

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setChargerAnimation()V
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationUtil:Lcom/android/systemui/power/ChargerAnimationUtil;

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChargingType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationUtil;->getViString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation applied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerUI.ChargerAnimationView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 203
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 204
    iget-boolean v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    const-wide/16 v4, 0x190

    if-eqz v3, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0xc8

    :goto_0
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    new-array v0, v0, [F

    .line 205
    fill-array-data v0, :array_1

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x64

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x640

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x546

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 208
    new-instance v1, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 98
    sget v0, Lcom/android/systemui/R$id;->backgroundArea:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->charging_content_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextContainer:Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->charger_animation_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 101
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->battery_level_unit:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextView:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->battery_level_unit_rtl:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPercentTextViewRtl:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->charging_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/android/systemui/R$id;->charger_animation_background_blur_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 106
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    return-void
.end method

.method protected setBackGroundAnimation()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationUtil:Lcom/android/systemui/power/ChargerAnimationUtil;

    invoke-virtual {v0}, Lcom/android/systemui/power/ChargerAnimationUtil;->isAodOrLockScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->charger_anim_normal_bg_color_lock:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 128
    :cond_1
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 129
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x78

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    .line 133
    iget-boolean v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$color;->charger_anim_blur_bg_color_lock:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 135
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 136
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 137
    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->charger_anim_blur_bg_color:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 141
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 142
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->charger_anim_blur_corner_radius:I

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 147
    :goto_0
    new-instance v1, Lcom/android/systemui/power/ChargerAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/ChargerAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 157
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsAodOrLockScreen:Z

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->charger_anim_normal_bg_color_lock:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 160
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$drawable;->charging_app_screen_background:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0x0
    .end array-data
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-void
.end method

.method public setPluginAODManager(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    return-void
.end method

.method protected startChargerAnimation(II)V
    .locals 3

    .line 284
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChargingType:I

    .line 285
    iget-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    const-string v0, "PowerUI.ChargerAnimationView"

    if-eqz p2, :cond_0

    const-string p0, "Animation is playing, return"

    .line 286
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    if-eqz p2, :cond_3

    const-string/jumbo p2, "startChargerAnimation : Lcd OFF -> so call chargingAnimStarted(true)"

    .line 290
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 293
    iget-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez p2, :cond_1

    const-string p2, "display"

    .line 294
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    :cond_1
    :try_start_0
    const-string/jumbo p2, "startChargerAnimation : setDisplayStateLimit(Display.STATE_ON)"

    .line 298
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz p2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-interface {p2, v1, v2}, Landroid/hardware/display/IDisplayManager;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "startChargerAnimation : mDisplayManager is null!! ERROR case"

    .line 302
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 305
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    const/4 p2, 0x0

    .line 308
    invoke-virtual {p0, p2}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 309
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimation()V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryChargingIconAnimation()V

    .line 312
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 313
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    const-string p0, "Animation Started"

    .line 315
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
