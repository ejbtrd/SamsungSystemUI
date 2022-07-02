.class public Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "KeyguardRectangleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;
    }
.end annotation


# static fields
.field private static final ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static mIsCameraLaunching:Z

.field private static mIsShowBouncerAnimation:Z


# instance fields
.field private mAffordancePivotY:I

.field private mAnimatorSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurPanelRoot:Landroid/widget/FrameLayout;

.field private mBlurPanelView:Landroid/view/View;

.field private mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mBottomIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mBottomIconScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCanDismissLockScreen:Z

.field private mCenterX:I

.field private mCenterXOnScreen:I

.field private mCenterY:I

.field private mCenterYOnScreen:I

.field private mClockView:Landroid/view/View;

.field private mDeviceInteractive:Z

.field private final mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field protected mFling:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mImageScale:F

.field private mInitialPeekAnimator:Landroid/animation/Animator;

.field private final mInitialPeekAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInitialPeekDistance:F

.field private mInitialPeekShowing:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDown:Z

.field private mIsLandScape:Z

.field private mIsNoUnlockNeeded:Z

.field private mIsSecure:Z

.field private mIsShortcutForPhone:Z

.field private mIsShortcutLaunching:Z

.field private mIsTargetView:Z

.field private mIsTaskTypeShortcut:Z

.field private mIsTaskTypeShortcutEnabled:Z

.field private mIsTransitIconNeeded:Z

.field private mIsUp:Z

.field private mIsWhiteWallpaper:Z

.field private mJustClicked:Z

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLaunchThresoldAcheived:Z

.field private mLockIconContainerView:Landroid/view/View;

.field private mLockStarContainer:Landroid/view/View;

.field private mMusicContainer:Landroid/view/View;

.field private mNotificationPanelIconOnlyContainer:Landroid/view/View;

.field private mNotificationStackScrollerView:Landroid/view/View;

.field private mOldPanelBackgroundAlpha:I

.field private mPanelBackground:Landroid/view/View;

.field private mPanelBackgroundDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mPanelIcon:Landroid/widget/ImageView;

.field private mQsExpanded:Z

.field private mRectangleAlphaAnimator:Landroid/animation/Animator;

.field private final mRectangleAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mRectangleBounds:Landroid/graphics/Rect;

.field private mRectangleColor:I

.field private mRectangleDistanceCovered:F

.field private mRectangleIconAlpha:I

.field private mRectangleIconBounds:Landroid/graphics/Rect;

.field private mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mRectangleIconMargin:I

.field private mRectangleIconScale:F

.field private mRectangleIconScaleAnimator:Landroid/animation/Animator;

.field private final mRectangleIconScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mRectangleIconScaleStart:F

.field private mRectangleIconSize:I

.field private mRectanglePaint:Landroid/graphics/Paint;

.field private mRectangleScaleAnimator:Landroid/animation/Animator;

.field private final mRectangleScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mRectangleScaleStart:F

.field private mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

.field private final mRectangleShrinkAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mRectangleShrinkeAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mRight:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSemBlurInfo:Landroid/view/SemBlurInfo;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutForCamera:Z

.field private mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

.field private final mShortcutLaunchAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShortcutLaunchAnimator:Landroid/animation/Animator;

.field private final mShortcutLaunchAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShortcutLaunchDistance:F

.field private mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTouchCancelled:Z

.field protected mTouchHandler:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;

.field private mTouchSlop:I

.field private mTrusted:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScale:F

.field public mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public static synthetic $r8$lambda$-GLzArzQQPTOlwku2mn4gU2I2S0(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startShortcutLaunchAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GAuHhIivBBclW3SPXNbDMTiPMpQ(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$setImageAlpha$6(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4LPYuA620MhlLDgW04I_FxV-d4(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startRectangleIconScaleAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VG0TKfslPbyzpxAMBIBh_Bx96Rc(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startInitialPeekAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDG0DnnD1WD8CABkb5tkTe9dOFo(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startRectangleAlphaShrinker$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJXoDWHtnnot_pNn8Q52PQG1Pfc(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startRectangleShrinkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1jvfHRN14F5zTtdaAGQINY_5Xg(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startRectangleAlphaAnimation$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2UrWe6NAiLqz7KNxkQYUGFe6jU(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$setImageScale$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kz2fAg7hUP8zh7D6k4grDF0wKUg(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startShortcutLaunchAlphaAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ncPpFM0t7hMRqrhQOxzJEyQ04K4(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->lambda$startRectangleScaleAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 158
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    .line 159
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsCameraLaunching:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 366
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 150
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 151
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 161
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDeviceInteractive:Z

    const/4 p3, 0x0

    .line 162
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchCancelled:Z

    .line 166
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    .line 167
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTargetView:Z

    .line 169
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mJustClicked:Z

    .line 173
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutForPhone:Z

    .line 174
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    .line 175
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mQsExpanded:Z

    .line 176
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsUp:Z

    .line 178
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekShowing:Z

    .line 179
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsDown:Z

    .line 180
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsWhiteWallpaper:Z

    .line 181
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    .line 182
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 183
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTransitIconNeeded:Z

    .line 184
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsNoUnlockNeeded:Z

    const/4 p4, 0x5

    .line 196
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchSlop:I

    const/16 p4, 0xff

    .line 197
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    .line 198
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mOldPanelBackgroundAlpha:I

    const/4 p4, 0x0

    .line 200
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 204
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mImageScale:F

    const v0, 0x3e19999a    # 0.15f

    .line 209
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    .line 210
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScale:F

    .line 212
    new-instance p4, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 261
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 273
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 280
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 301
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 308
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 316
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 331
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 338
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHandler:Landroid/os/Handler;

    .line 368
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 370
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 372
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    .line 373
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 374
    const-class p1, Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/ShortcutManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 375
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 377
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsSecure:Z

    .line 379
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isTrusted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTrusted:Z

    .line 380
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCanDismissLockScreen:Z

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-array v0, p2, [Landroid/net/Uri;

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {p1, p4, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 383
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsWhiteWallpaper:Z

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleColor()V

    .line 385
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateDisplayParameters()V

    .line 387
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->resetBlurRectangleView()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleColor()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2702(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsCameraLaunching:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsUp:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateDisplayParameters()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->initDownStates(FF)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateBlurRectangleView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateRectangleIconDrawable(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAllAnimators()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->initComponents()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutForCamera:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekDistance:F

    return p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;F)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startInitialPeekAnimation(F)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchCancelled:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateDistance(FF)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->endMotion(FF)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mJustClicked:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mJustClicked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsDown:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleShrinkAnimation()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleAlphaShrinker()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTargetView:Z

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private cancelAllAnimators()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelAnimatorSet()V
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAnimatorSet:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1309
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1311
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAnimatorSet:Ljava/util/List;

    return-void
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 938
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 939
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 941
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private dontLaunchWithCurrentVelocity()V
    .locals 1

    .line 699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAllAnimators()V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleShrinkAnimation()V

    .line 701
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private drawPreviewRectangle(Landroid/graphics/Canvas;)V
    .locals 10

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updatePanelViews()V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 615
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42480000    # 50.0f

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 620
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 622
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method private endMotion(FF)V
    .locals 2

    .line 658
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->launchShortcut(FF)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 662
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAllAnimators()V

    .line 664
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private getCurrentVelocity(FF)F
    .locals 6

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 675
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 679
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchX:F

    sub-float/2addr p1, v2

    .line 680
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchY:F

    sub-float/2addr p2, p0

    float-to-double v2, p1

    float-to-double v4, p2

    .line 681
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 855
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$15;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$15;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getOpacityforClockView(F)F
    .locals 1

    .line 1258
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method private getScaleforClockView(FZ)F
    .locals 0

    if-nez p2, :cond_0

    const p2, 0x3f733333    # 0.95f

    .line 1248
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    div-float/2addr p1, p0

    const p0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1250
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    div-float/2addr p1, p0

    const p0, 0x3e199998    # 0.14999998f

    :goto_0
    mul-float/2addr p1, p0

    sub-float/2addr p2, p1

    const p0, 0x3f59999a    # 0.85f

    cmpg-float p1, p2, p0

    if-gez p1, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method private getShortcutIndex()I
    .locals 0

    .line 1445
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    return p0
.end method

.method private initAnimatedValues()V
    .locals 2

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 722
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private initComponents()V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getKeyguardStatusView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getNotificationStackScrollerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getNotificationIconsOnlyContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockIconContainerView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLockIconContainerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockIconContainerView:Landroid/view/View;

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mMusicContainer:Landroid/view/View;

    if-nez v0, :cond_4

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMusicContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mMusicContainer:Landroid/view/View;

    .line 1200
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockStarContainer:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLockStarContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockStarContainer:Landroid/view/View;

    :cond_5
    return-void
.end method

.method private initDownStates(FF)V
    .locals 2

    .line 1149
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchX:F

    .line 1150
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchY:F

    const/4 p1, 0x0

    .line 1152
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchCancelled:Z

    const/4 p2, 0x1

    .line 1153
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mJustClicked:Z

    .line 1154
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsDown:Z

    .line 1155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    .line 1156
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    .line 1157
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsCameraLaunching:Z

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getShortcutIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutProperty(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    move p1, p2

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    .line 1160
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getShortcutIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isNoUnlockNeeded(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsNoUnlockNeeded:Z

    .line 1162
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    if-eqz p1, :cond_1

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    const p1, 0x3e19999a    # 0.15f

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    const/16 p1, 0x66

    .line 1165
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    .line 1166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v0, :cond_4

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getShortcutIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskTypeEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getShortcutIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->isPanelIconTransitionNeeded(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTransitIconNeeded:Z

    .line 1169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v0, :cond_2

    const/16 v1, 0xcc

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    if-eqz v0, :cond_3

    const/16 p1, 0xff

    .line 1170
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    move p1, v1

    .line 1173
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1174
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScale:F

    .line 1176
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekShowing:Z

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 648
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isSecure()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTrusted:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCanDismissLockScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setImageAlpha$6(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 830
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    if-gtz p2, :cond_1

    const/4 p2, 0x1

    .line 835
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private synthetic lambda$setImageScale$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 770
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mImageScale:F

    .line 771
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startInitialPeekAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 498
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleBounds(F)V

    .line 499
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startRectangleAlphaAnimation$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1393
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private synthetic lambda$startRectangleAlphaShrinker$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 514
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startRectangleIconScaleAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1379
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScale:F

    return-void
.end method

.method private synthetic lambda$startRectangleScaleAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1366
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    return-void
.end method

.method private synthetic lambda$startRectangleShrinkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 472
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getOpacityforClockView(F)F

    move-result v0

    .line 473
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getScaleforClockView(FZ)F

    move-result v1

    .line 474
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsDown:Z

    if-eqz v2, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 476
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialViewAnimator(FF)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setViewAnimator(FF)V

    .line 480
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleBounds(F)V

    .line 481
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startShortcutLaunchAlphaAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 546
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    .line 547
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startShortcutLaunchAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 528
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 529
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleBounds(F)V

    return-void
.end method

.method private launchShortcut(FF)V
    .locals 1

    .line 687
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getCurrentVelocity(FF)F

    move-result p1

    const/4 p2, 0x1

    .line 688
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    const/high16 v0, -0x3a860000    # -4000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 690
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    .line 691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->launchShortcutWithCurrentVelocity()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 693
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->dontLaunchWithCurrentVelocity()V

    :goto_0
    return-void
.end method

.method private launchShortcutWithCurrentVelocity()V
    .locals 4

    .line 705
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSecure()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsNoUnlockNeeded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    .line 706
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutForCamera:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsCameraLaunching:Z

    if-eqz v0, :cond_2

    .line 707
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutForPhone:Z

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    :cond_2
    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startShortcutLaunchAnimation()V

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startShortcutLaunchAlphaAnimation()V

    .line 715
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleScaleAnimation(F)V

    return-void
.end method

.method private playVibration(Z)V
    .locals 1

    .line 1242
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    if-eqz p1, :cond_0

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 p1, 0x6d

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    return-void
.end method

.method private resetBlurRectangleView()V
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1465
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1468
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setInitialUScaleAnimator(Landroid/view/View;FF)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1269
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 1270
    aget v1, v1, v2

    .line 1271
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq p1, v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mMusicContainer:Landroid/view/View;

    if-ne p1, v6, :cond_1

    goto :goto_1

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 1279
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1280
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1281
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 1282
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1284
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1285
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v5

    .line 1287
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1272
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1273
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    if-ge v1, v3, :cond_5

    int-to-float v1, v3

    .line 1274
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    :cond_5
    mul-int/lit8 v3, v3, -0x1

    int-to-float v1, v3

    .line 1276
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_6
    :goto_2
    new-array v1, v2, [F

    aput p2, v1, v5

    const-string/jumbo v3, "scaleX"

    .line 1289
    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v2, [F

    aput p2, v3, v5

    const-string/jumbo p2, "scaleY"

    .line 1290
    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array v3, v2, [F

    aput p3, v3, v5

    const-string p3, "alpha"

    .line 1291
    invoke-static {p1, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1292
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object p2, v3, v2

    aput-object p1, v3, v0

    .line 1293
    invoke-virtual {p3, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x190

    .line 1294
    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1295
    sget-object p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1296
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 1297
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAnimatorSet:Ljava/util/List;

    if-nez p1, :cond_7

    .line 1298
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAnimatorSet:Ljava/util/List;

    .line 1300
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAnimatorSet:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setInitialViewAnimator(FF)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockIconContainerView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mMusicContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockStarContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialUScaleAnimator(Landroid/view/View;FF)V

    return-void
.end method

.method private setRectangleBounds(F)V
    .locals 19

    move-object/from16 v0, p0

    .line 946
    iget v1, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    int-to-float v2, v1

    iget v3, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v5, v1

    sub-float/2addr v5, v2

    .line 953
    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScale:F

    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconSize:I

    int-to-float v8, v7

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 954
    iget v9, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconMargin:I

    sub-int v10, v8, v7

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    .line 956
    iget v11, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    int-to-float v12, v9

    cmpl-float v12, v11, v12

    if-lez v12, :cond_0

    float-to-int v11, v11

    sub-int/2addr v11, v9

    .line 957
    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    :cond_0
    sub-float v9, v5, v2

    div-float/2addr v9, v4

    add-float/2addr v9, v2

    .line 959
    div-int/lit8 v4, v8, 0x2

    int-to-float v11, v4

    sub-float/2addr v9, v11

    float-to-int v9, v9

    add-int v11, v9, v8

    .line 961
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    .line 962
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v15, v7

    sub-float v15, v15, p1

    cmpg-float v16, v15, v13

    if-gez v16, :cond_1

    goto :goto_0

    :cond_1
    move v13, v15

    :goto_0
    int-to-float v15, v7

    add-float/2addr v15, v13

    int-to-float v14, v7

    cmpl-float v14, v15, v14

    if-lez v14, :cond_2

    add-int/lit8 v14, v7, 0x32

    int-to-float v15, v14

    :cond_2
    float-to-int v14, v13

    add-int/2addr v14, v10

    .line 972
    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v4

    if-ge v14, v10, :cond_3

    .line 973
    div-int/lit8 v10, v7, 0x2

    sub-int v14, v10, v4

    :cond_3
    add-int v4, v14, v8

    add-int/2addr v7, v8

    if-le v4, v7, :cond_4

    move v4, v15

    goto :goto_3

    :cond_4
    move/from16 v18, v15

    move v15, v4

    goto :goto_4

    .line 984
    :cond_5
    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v14, v4

    cmpl-float v14, p1, v14

    if-lez v14, :cond_6

    int-to-float v14, v4

    goto :goto_1

    :cond_6
    move/from16 v14, p1

    :goto_1
    int-to-float v15, v4

    sub-float v15, v14, v15

    cmpg-float v13, v15, v13

    if-gez v13, :cond_7

    const/high16 v13, -0x3db80000    # -50.0f

    goto :goto_2

    :cond_7
    move v13, v15

    :goto_2
    float-to-int v15, v14

    sub-int/2addr v15, v10

    .line 993
    div-int/lit8 v10, v4, 0x2

    div-int/lit8 v17, v7, 0x2

    add-int v10, v10, v17

    if-le v15, v10, :cond_8

    .line 994
    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v10, v7, 0x2

    add-int v15, v4, v10

    :cond_8
    sub-int v4, v15, v8

    mul-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_9

    move v4, v14

    :goto_3
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    move/from16 v18, v14

    move v14, v4

    :goto_4
    move/from16 v4, v18

    :goto_5
    if-eqz v12, :cond_a

    .line 1004
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, v13

    goto :goto_6

    :cond_a
    move v7, v4

    :goto_6
    iput v7, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    .line 1005
    iget v8, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_b

    int-to-float v5, v1

    .line 1008
    :cond_b
    iput v3, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleStart:F

    .line 1009
    iput v6, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleStart:F

    .line 1010
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateOnThresold()V

    .line 1011
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    float-to-int v3, v13

    float-to-int v2, v2

    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1012
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v14, v9, v15, v11}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setRectangleColor()V
    .locals 2

    .line 726
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutForCamera:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 729
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, -0x1000000

    .line 727
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    .line 731
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_2

    .line 733
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private setSemBlurInfo()V
    .locals 3

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1475
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/high16 v1, 0x42480000    # 50.0f

    .line 1476
    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSemBlurInfo:Landroid/view/SemBlurInfo;

    return-void
.end method

.method private setUScaleAnimator(Landroid/view/View;FF)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1318
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_2

    .line 1319
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1320
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    if-ge v0, p0, :cond_1

    int-to-float p0, p0

    .line 1321
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    .line 1323
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 1326
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1327
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 1328
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    .line 1331
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1333
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1334
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 1336
    :cond_5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1337
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1338
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setViewAnimator(FF)V
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mNotificationPanelIconOnlyContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockIconContainerView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mMusicContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLockStarContainer:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setUScaleAnimator(Landroid/view/View;FF)V

    return-void
.end method

.method private startInitialPeekAnimation(F)V
    .locals 3

    const-string v0, "KeyguardRectangleAffordanceView"

    const-string/jumbo v1, "startInitialPeekAnimation"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 491
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekDistance:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 493
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x12c

    .line 494
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 495
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 496
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const v0, 0x3f733333    # 0.95f

    .line 504
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setInitialViewAnimator(FF)V

    return-void
.end method

.method private startRectangleAlphaAnimation(I)V
    .locals 3

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1388
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1389
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xc8

    .line 1390
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1391
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1392
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1396
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startRectangleAlphaShrinker()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 509
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 511
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 512
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRectangleIconScaleAnimation(F)V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1374
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleStart:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1375
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x1c2

    .line 1376
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1377
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1378
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1382
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startRectangleScaleAnimation(F)V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1361
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleStart:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1362
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x1c2

    .line 1363
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1364
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1365
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1369
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startRectangleShrinkAnimation()V
    .locals 4

    const-string v0, "KeyguardRectangleAffordanceView"

    const-string/jumbo v1, "startRectangleShrinkAnimation"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    .line 464
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageScale(FZ)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 466
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 467
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 468
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekShowing:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1c2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 469
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 484
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startShortcutLaunchAlphaAnimation()V
    .locals 5

    const-string v0, "KeyguardRectangleAffordanceView"

    const-string/jumbo v1, "startShortcutLaunchAlphaAnimation"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 540
    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xff

    :goto_2
    aput v3, v4, v2

    .line 541
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 542
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x1c2

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 544
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAlphaAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startShortcutLaunchAnimation()V
    .locals 3

    const-string v0, "KeyguardRectangleAffordanceView"

    const-string/jumbo v1, "startShortcutLaunchAnimation"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 523
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 524
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x1c2

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 526
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 527
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 532
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateBlurRectangleView()V
    .locals 2

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSemBlurInfo:Landroid/view/SemBlurInfo;

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1458
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private updateDisplayParameters()V
    .locals 5

    .line 564
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x1050209

    .line 566
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 567
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 568
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    if-nez v4, :cond_0

    .line 569
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    .line 570
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    const v1, 0x3e19999a    # 0.15f

    .line 571
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    .line 572
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_initial_view_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekDistance:F

    goto :goto_0

    .line 574
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    .line 575
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    const v1, 0x3dcccccd    # 0.1f

    .line 576
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mVerticalScale:F

    .line 577
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_initial_view_out_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekDistance:F

    .line 579
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mAffordancePivotY:I

    .line 580
    sget v1, Lcom/android/systemui/R$dimen;->shortcut_launch_thresold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 581
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconMargin:I

    .line 582
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_app_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconSize:I

    return-void
.end method

.method private updateDistance(FF)V
    .locals 2

    .line 1207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchX:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchX:F

    sub-float v0, p1, v0

    :goto_0
    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    move v0, p1

    .line 1211
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialTouchY:F

    sub-float/2addr v1, p2

    cmpg-float p2, v1, p1

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    float-to-double v0, v0

    float-to-double p1, p1

    .line 1215
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1217
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_5

    .line 1218
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 1219
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimatorSet()V

    .line 1222
    :cond_3
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekDistance:F

    add-float/2addr p1, p2

    .line 1224
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_4

    sub-float/2addr p1, p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    .line 1225
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchSlop:I

    goto :goto_2

    .line 1227
    :cond_4
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchSlop:I

    :goto_2
    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 1230
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mInitialPeekShowing:Z

    .line 1231
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mJustClicked:Z

    .line 1232
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsDown:Z

    .line 1233
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleBounds(F)V

    .line 1234
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getScaleforClockView(FZ)F

    move-result p1

    .line 1235
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getOpacityforClockView(F)F

    move-result p2

    .line 1236
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setViewAnimator(FF)V

    .line 1237
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_5
    return-void
.end method

.method private updateOnThresold()V
    .locals 7

    .line 1016
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleDistanceCovered:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchDistance:F

    cmpl-float v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    const/16 v4, 0xcc

    const/16 v5, 0xff

    const/16 v6, 0x66

    if-ltz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    .line 1018
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    if-eqz v1, :cond_0

    const v3, 0x3d4ccccd    # 0.05f

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleScaleAnimation(F)V

    const v1, 0x3f99999a    # 1.2f

    .line 1019
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleIconScaleAnimation(F)V

    .line 1020
    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    .line 1022
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v1, :cond_3

    .line 1023
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    if-eqz v1, :cond_2

    move v4, v6

    .line 1025
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTransitIconNeeded:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateRectangleIconDrawable(Z)V

    .line 1027
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleAlphaAnimation(I)V

    .line 1028
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->playVibration(Z)V

    goto :goto_3

    :cond_4
    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1029
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 1030
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mLaunchThresoldAcheived:Z

    .line 1031
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const v3, 0x3e19999a    # 0.15f

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleScaleAnimation(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1032
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleIconScaleAnimation(F)V

    .line 1033
    iput v6, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    .line 1035
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v1, :cond_8

    .line 1036
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v4, v6

    .line 1038
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateRectangleIconDrawable(Z)V

    move v6, v4

    .line 1040
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->startRectangleAlphaAnimation(I)V

    .line 1041
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->playVibration(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updatePanelViews()V
    .locals 5

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectanglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 1498
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mOldPanelBackgroundAlpha:I

    if-eq v1, v0, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1500
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mOldPanelBackgroundAlpha:I

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconAlpha:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method private updateRectangleIconDrawable(Z)V
    .locals 5

    .line 1480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getShortcutIndex()I

    move-result v0

    .line 1481
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getAppShortcutDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1482
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isblendNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1483
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1484
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 1485
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungCameraPackage(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1486
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    .line 1484
    invoke-virtual {v2, p1, v0, v4, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->grayInvertDrawble(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1488
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1489
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getRestingAlpha()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public init()V
    .locals 2

    .line 418
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;

    .line 420
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 423
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public isPlayingDCAnimation()Z
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSamsungPhoneShortcut()Z
    .locals 0

    .line 1414
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutForPhone:Z

    return p0
.end method

.method public isWaitingToLaunchApp()Z
    .locals 1

    .line 1404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsNoUnlockNeeded:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSecure()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 392
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onAttachedToWindow()V

    const-string v0, "bottom"

    .line 393
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 394
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 557
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->reset()V

    .line 559
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsLandScape:Z

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateDisplayParameters()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->updateDisplayParameters()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIImageView;->onDetachedFromWindow()V

    .line 400
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 401
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTargetView:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->drawPreviewRectangle(Landroid/graphics/Canvas;)V

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 605
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 606
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 607
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 587
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    .line 588
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterX:I

    .line 589
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterY:I

    new-array p1, p2, [I

    .line 591
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 592
    aget p2, p1, p2

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterXOnScreen:I

    const/4 p2, 0x1

    .line 593
    aget p1, p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCenterYOnScreen:I

    .line 594
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenWidth:I

    .line 595
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mScreenHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 929
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;

    if-eqz p0, :cond_1

    .line 932
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public onUnlockedChanged()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsSecure:Z

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isTrusted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mTrusted:Z

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mCanDismissLockScreen:Z

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 916
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 917
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mDeviceInteractive:Z

    if-eqz p2, :cond_0

    .line 918
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->launchShortcut(FF)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 922
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 1433
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 4

    .line 873
    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsCameraLaunching:Z

    if-eqz v0, :cond_2

    .line 882
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 886
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRectangleAffordanceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsNoUnlockNeeded:Z

    .line 889
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    .line 890
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTransitIconNeeded:Z

    .line 891
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTaskTypeShortcut:Z

    .line 892
    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShowBouncerAnimation:Z

    .line 893
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutLaunching:Z

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleScaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconScaleAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleAlphaAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAllAnimators()V

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimatorSet()V

    .line 902
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mQsExpanded:Z

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 903
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setViewAnimator(FF)V

    :cond_3
    const/4 v0, 0x0

    .line 906
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 908
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleColor()V

    .line 909
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->initAnimatedValues()V

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->resetBlurRectangleView()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 788
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 4

    .line 808
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    if-eqz v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 814
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 818
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_4

    if-gtz p1, :cond_2

    move p1, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 824
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 826
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    aput p1, v2, v1

    .line 827
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 828
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 829
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p7, :cond_5

    .line 839
    sget-object p7, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 841
    :cond_5
    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, -0x1

    cmp-long p2, p3, v0

    if-nez p2, :cond_6

    const-wide/16 p3, 0x12c

    .line 845
    :cond_6
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 846
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p8, :cond_7

    .line 848
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 850
    :cond_7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 9

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object v8, p6

    .line 794
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageScale(FZ)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 744
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 760
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mImageScale:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 764
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mImageScale:F

    .line 765
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 767
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 768
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconScaleAnimator:Landroid/animation/ValueAnimator;

    .line 769
    new-instance p2, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 773
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBottomIconScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_2

    .line 775
    sget-object p5, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 777
    :cond_2
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, -0x1

    cmp-long p0, p3, v0

    if-nez p0, :cond_3

    const-wide/16 p3, 0x12c

    .line 781
    :cond_3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 782
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setIsShortcutForCamera(Z)V
    .locals 0

    .line 1409
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutForCamera:Z

    .line 1410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRectangleColor()V

    return-void
.end method

.method public setIsTargetView(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsTargetView:Z

    return-void
.end method

.method public setPreviewColor(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 1449
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mQsExpanded:Z

    return-void
.end method

.method public setRight(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRight:Z

    return-void
.end method

.method public setShortcutBlurPanel(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 437
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    .line 438
    sget v0, Lcom/android/systemui/R$id;->panel_background:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackground:Landroid/view/View;

    .line 439
    sget v0, Lcom/android/systemui/R$id;->panel_blur:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 440
    sget v0, Lcom/android/systemui/R$id;->panel_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 442
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 443
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mRectangleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setSemBlurInfo()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data
.end method

.method public setShortcutForPhone(Z)V
    .locals 0

    .line 1418
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mIsShortcutForPhone:Z

    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 406
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    return-void
.end method
