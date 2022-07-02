.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;,
        Lcom/android/systemui/BatteryMeterView$SecSettingObserver;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryMeterViewParent:I

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStateUnknown:Z

.field private mCharging:Z

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mGrayColor:I

.field private mGrayIntensity:F

.field private mIgnoreTunerUpdates:Z

.field private mIntensity:F

.field private mIsDirectPowerMode:Z

.field private mIsGrayApplied:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private final mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I

.field private mQsTintIntensity:F

.field private final mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

.field private mSecSettingObserver:Lcom/android/systemui/BatteryMeterView$SecSettingObserver;

.field private mShouldApplyGray:Z

.field private mShouldUseQsTintColor:Z

.field private mShowPercentAvailable:Z

.field private mShowPercentMode:I

.field private mSlimIndicatorVisibilityHelper:Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;

.field private final mSlotBattery:Ljava/lang/String;

.field private mSmallestScreenWidthDp:I

.field private mTextColor:I

.field private mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public static synthetic $r8$lambda$nPdnJlxT56u5w_yepMDju6jI94M(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->lambda$onLocaleListChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$tE-TUFngFnD6fsDmUpqJf1miV_U(Lcom/android/systemui/BatteryMeterView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->lambda$updatePercentText$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 162
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mAlpha:F

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShouldUseQsTintColor:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsDirectPowerMode:Z

    .line 177
    new-instance v1, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsGrayApplied:Z

    const/4 v1, -0x1

    .line 199
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterViewParent:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 201
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mGrayIntensity:F

    .line 205
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShouldApplyGray:Z

    .line 739
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mSmallestScreenWidthDp:I

    .line 923
    new-instance v1, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;

    .line 214
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, 0x800013

    .line 217
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 219
    sget-object v3, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 221
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v3, Lcom/android/systemui/R$color;->meter_background_color:I

    .line 222
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 221
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 223
    sget v3, Lcom/android/systemui/R$styleable;->BatteryMeterView_textAppearance:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 225
    new-instance v3, Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-direct {v3, p1, p3}, Lcom/android/systemui/SamsungBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_light_mode_alpha:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_dark_mode_alpha:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setColorsFromContext(Landroid/content/Context;)V

    .line 229
    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 234
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SecSettingObserver;

    invoke-direct {p2, p0, v2}, Lcom/android/systemui/BatteryMeterView$SecSettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSecSettingObserver:Lcom/android/systemui/BatteryMeterView$SecSettingObserver;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110038

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    const p2, 0x1040cec

    .line 249
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 251
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 258
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 259
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 260
    invoke-virtual {p3, v0, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 262
    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 265
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 267
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const p3, -0x12000001

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 269
    new-instance p1, Lcom/android/systemui/BatteryMeterView$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/BatteryMeterView$2;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 301
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 302
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 303
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/SamsungBatteryMeterDrawable;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 0

    .line 84
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/BatteryMeterView;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 868
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onLocaleListChanged$2()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateMarginsOfPercentView()V

    return-void
.end method

.method private synthetic lambda$updatePercentText$0(Ljava/lang/String;)V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 529
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 530
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_with_estimate:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 533
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_0
    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 2

    .line 498
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->battery_percentage_view:I

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 6

    .line 707
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 710
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 711
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v2

    .line 714
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 715
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 719
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 721
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 722
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 724
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 728
    :cond_2
    :goto_0
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 729
    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 730
    sget v5, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 732
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v5, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 734
    invoke-virtual {v5, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 736
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setGrayBatteryIcon(FI)V
    .locals 1

    .line 855
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsGrayApplied:Z

    if-eqz v0, :cond_0

    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->setGrayBatteryIcon(FI)V

    .line 859
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 860
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 861
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 p1, 0x1

    .line 863
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIsGrayApplied:Z

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .locals 6

    .line 549
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->status_bar_settings_battery_meter_format:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    const-string v3, ""

    .line 557
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 566
    :cond_2
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private subscribeForTunerUpdates()V
    .locals 2

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateGrayIndicatorIcons()V
    .locals 2

    .line 837
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 838
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterViewParent:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getGrayColorIntensity()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mGrayIntensity:F

    .line 846
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getLockIndicatorIconsColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mGrayColor:I

    .line 847
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->needGrayLockIndicatorIcons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShouldApplyGray:Z

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getGrayColorIntensity()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mGrayIntensity:F

    .line 841
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getHomeIndicatorIconsColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mGrayColor:I

    .line 842
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->needGrayHomeIndicatorIcons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShouldApplyGray:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMarginsOfPercentView()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_level_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 642
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_1

    return-void

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 524
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_2

    .line 525
    new-instance v1, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_1

    .line 539
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_1

    .line 543
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 544
    :cond_4
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateShowPercent()V
    .locals 1

    .line 572
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    move-result v0

    .line 573
    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent(Z)V

    return-void
.end method

.method private updateShowPercent(Z)V
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 612
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mIsDirectPowerMode:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    :cond_1
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    :cond_2
    if-nez v3, :cond_5

    .line 615
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 616
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 620
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 621
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateMarginsOfPercentView()V

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 630
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 631
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTunerSubscription()V
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    goto :goto_0

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 872
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 873
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_1
    const-string v0, "  BatteryMeterView:"

    .line 874
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDrawable.getPowerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBatteryStateUnknown: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 407
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 408
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 409
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSecSettingObserver:Lcom/android/systemui/BatteryMeterView$SecSettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView$SecSettingObserver;->registerToHelper()V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "BatteryMeterView"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->attach(Ljava/lang/String;)V

    .line 432
    :cond_2
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 463
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 464
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZIIII)V
    .locals 11

    move-object v0, p0

    .line 478
    iget-boolean v1, v0, Lcom/android/systemui/BatteryMeterView;->mIsDirectPowerMode:Z

    const/16 v2, 0x4000

    move/from16 v3, p7

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 480
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/BatteryMeterView;->mIsDirectPowerMode:Z

    if-eq v2, v1, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 485
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    if-eqz v3, :cond_2

    .line 486
    iget-boolean v10, v0, Lcom/android/systemui/BatteryMeterView;->mIsDirectPowerMode:Z

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->onBatteryLevelChanged(IZZIIIZ)V

    :cond_2
    return-void
.end method

.method public onBatteryUnknownStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 745
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 746
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 747
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_0

    .line 749
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mSmallestScreenWidthDp:I

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateScale()V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateGrayIndicatorIcons()V

    .line 767
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 770
    :goto_0
    iget-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mShouldUseQsTintColor:Z

    if-eqz p3, :cond_1

    .line 771
    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mQsTintIntensity:F

    .line 773
    :cond_1
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mIntensity:F

    if-eqz p1, :cond_2

    .line 774
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    sub-float/2addr p3, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    goto :goto_1

    :cond_2
    const p1, 0x3f3d70a4    # 0.74f

    .line 776
    :goto_1
    iget-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mShouldApplyGray:Z

    if-eqz p3, :cond_3

    .line 777
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mGrayIntensity:F

    .line 779
    :cond_3
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mAlpha:F

    .line 780
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    .line 781
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 782
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 783
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 785
    :cond_5
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 786
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 787
    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 795
    invoke-virtual {p0, p2, p1, p2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 666
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    if-eqz p0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 438
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSecSettingObserver:Lcom/android/systemui/BatteryMeterView$SecSettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView$SecSettingObserver;->unregisterToHelper()V

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->detach()V

    .line 453
    :cond_0
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onLocaleListChanged()V
    .locals 1

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 657
    new-instance v0, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 399
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 401
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    sget v0, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 383
    sget v0, Lcom/android/systemui/R$color;->status_bar_battery_frame_dark_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 384
    sget v0, Lcom/android/systemui/R$color;->light_mode_battery_icon_color_dual_tone_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 385
    sget v0, Lcom/android/systemui/R$color;->dark_mode_battery_icon_color_dual_tone_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    return-void
.end method

.method public setIgnoreTunerUpdates(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateTunerSubscription()V

    return-void
.end method

.method public setParentViewTag(I)V
    .locals 0

    .line 832
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterViewParent:I

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 1

    .line 334
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 335
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public updateColors(III)V
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mShouldApplyGray:Z

    if-eqz v1, :cond_0

    .line 810
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mGrayIntensity:F

    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mGrayColor:I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BatteryMeterView;->setGrayBatteryIcon(FI)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 813
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mIntensity:F

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mIsGrayApplied:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->setColors(FIIZ)V

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColors(III)V

    .line 817
    :cond_2
    :goto_0
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 818
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 819
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const/4 p1, 0x0

    .line 822
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIsGrayApplied:Z

    .line 825
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_4

    .line 826
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->onDensityOrFontScaleChanged()V

    return-void
.end method
