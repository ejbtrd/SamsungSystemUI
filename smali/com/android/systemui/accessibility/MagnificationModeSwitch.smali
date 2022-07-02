.class Lcom/android/systemui/accessibility/MagnificationModeSwitch;
.super Ljava/lang/Object;
.source "MagnificationModeSwitch.java"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;


# static fields
.field static final DEFAULT_FADE_OUT_ANIMATION_DELAY_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FADING_ANIMATION_DURATION_MS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mButtonDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mButtonView:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field final mDraggableWindowBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFadeInAnimationTask:Ljava/lang/Runnable;

.field private final mFadeOutAnimationTask:Ljava/lang/Runnable;

.field private final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field private mHorizontalButton:Landroid/widget/ImageView;

.field mIsFadeOutAnimating:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsVisible:Z

.field private mMagnificationMode:I

.field private mModeButton:Landroid/widget/ImageView;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

.field private mSingleTapDetected:Z

.field private mSizeButton:Landroid/widget/ImageView;

.field private mToLeftScreenEdge:Z

.field private mTouchView:Landroid/view/View;

.field private mUiTimeout:I

.field private final mWindowInsetChangeRunnable:Ljava/lang/Runnable;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0kHB47NtIAsUuOsXeXiZAoRTDqI(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FFJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$moveButton$4(FFJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GV-kRiJy1uktjMJpSGhiL82FDJw(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pu7FSJWLyCkU1d55TiGPAOsuSs8(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$setSystemGestureExclusion$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$RmmRYLZ5-_TGOsL3BiGHr9fwq5M(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XYyw3YXqrbG2VZzBqaKgU7q7tZ4(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPatOWlh3FAjs7S6F4h-3BbUufY(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eMJtrGmjwwF5JO3yP_Rm3epUIxo(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->onWindowInsetChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$fofjmRfBWUWHTVsQBQtJBGBBy3o(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTouchView:Landroid/view/View;

    .line 253
    new-instance v2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 127
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 128
    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 129
    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "accessibility_magnification_mode"

    const/4 v4, -0x2

    .line 133
    invoke-static {p2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 139
    sget p2, Lcom/android/systemui/R$layout;->window_magnifier_button_view:I

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 142
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 143
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 145
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->magnifier_mode_button:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    .line 148
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->magnifier_horizontal_button:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    .line 149
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->magnifier_size_button:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    .line 151
    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues()V

    .line 154
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 157
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 160
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 165
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowInsetChangeRunnable:Ljava/lang/Runnable;

    .line 166
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 175
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    .line 181
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    .line 191
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 194
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonView(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTouchView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)Ljava/lang/CharSequence;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->formatContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/view/WindowManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->handleSingleTap()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    return-void
.end method

.method private applyResourcesValues()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->magnification_switch_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    sget v2, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg_dark:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg:I

    .line 234
    :goto_0
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color_dark:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/R$drawable;->ic_magnification_controller_resizing_mode:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-static {v4}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setHorizontalButtonResource()V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 248
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private changeMode()Z
    .locals 3

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->toggleMagnificationMode()V

    .line 594
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_edit_magnification_size"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method

.method private changeSize()Z
    .locals 6

    .line 602
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_edit_magnification_size"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 602
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v2, v4

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 v5, v2, 0x1

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSizeButtonResource()V

    if-nez v2, :cond_1

    .line 609
    sget v0, Lcom/android/systemui/R$string;->accessibility_magnification_window_resizing_guides_shown:I

    goto :goto_0

    .line 611
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->accessibility_magnification_resizing_off:I

    :goto_0
    const-string v1, "AMFR"

    if-nez v2, :cond_2

    .line 615
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string v3, "On"

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string v3, "Off"

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->sendAnnouncementEvent(I)V

    return v4
.end method

.method private static createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 727
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7f7

    const/16 v4, 0x8

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x33

    .line 733
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 734
    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x3

    .line 735
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v6
.end method

.method private formatContentDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 208
    sget v0, Lcom/android/systemui/R$id;->magnifier_mode_button:I

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_change_magnification_type:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->magnifier_size_button:I

    if-ne p1, v0, :cond_1

    .line 212
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_resize:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_ignore_diagonal_movements:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 759
    sget v0, Lcom/android/systemui/R$string;->accessibility_magnification_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDraggableWindowBounds()Landroid/graphics/Rect;
    .locals 5

    .line 740
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->magnification_switch_button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 742
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 744
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 743
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 745
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 746
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 747
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v1, v1, v4, p0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 748
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 750
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    return-object v3
.end method

.method private getHorizontalLockIconResId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 722
    sget p0, Lcom/android/systemui/R$drawable;->ic_magnification_controller_ignore_diagonal_movements_on:I

    goto :goto_0

    .line 723
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_magnification_controller_ignore_diagonal_movements_off:I

    :goto_0
    return p0
.end method

.method static getIconResId(I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 712
    sget p0, Lcom/android/systemui/R$drawable;->ic_magnification_controller_switch_window:I

    goto :goto_0

    .line 713
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_magnification_controller_switch_full:I

    :goto_0
    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050209

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleSingleTap()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 577
    sget v1, Lcom/android/systemui/R$id;->magnifier_mode_button:I

    if-ne v0, v1, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->changeMode()Z

    goto :goto_0

    .line 579
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->magnifier_size_button:I

    if-ne v0, v1, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->changeSize()Z

    goto :goto_0

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->toggleHorizontal()Z

    :goto_0
    return-void
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$moveButton$4(FFJ)V
    .locals 0

    .line 386
    iget-object p3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p4, p4

    add-float/2addr p4, p1

    float-to-int p1, p4

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 387
    iget p1, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonViewLayoutIfNeeded()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowInsetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowInsetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 178
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    return-void
.end method

.method private synthetic lambda$setSystemGestureExclusion$5()V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 768
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 767
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private moveButton(FF)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;FF)V

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mTouchView:Landroid/view/View;

    .line 332
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private onWindowInsetChanged()V
    .locals 2

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 512
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    return-void
.end method

.method private sendAnnouncementEvent(I)V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    .line 787
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 789
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 791
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private setHorizontalButtonResource()V
    .locals 4

    .line 686
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 687
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_lock_magnification_horizontal_focus"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 686
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getHorizontalLockIconResId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v2, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_magnification_on:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_magnification_off:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setSizeButtonResource()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 629
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_edit_magnification_size"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 628
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 635
    sget v0, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg_dark_select:I

    .line 636
    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color_select:I

    goto :goto_0

    .line 638
    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg_dark:I

    .line 639
    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color_dark:I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 643
    sget v0, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg_select:I

    .line 644
    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color_select:I

    goto :goto_0

    .line 646
    :cond_3
    sget v0, Lcom/android/systemui/R$drawable;->accessibility_magnifier_btn_bg:I

    .line 647
    sget v1, Lcom/android/systemui/R$color;->accessibility_magnifier_icon_color:I

    .line 651
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 652
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz v2, :cond_4

    .line 655
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_magnification_on:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_magnification_off:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setSystemGestureExclusion()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showButton(IZ)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_am_magnification_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    if-eq v0, p1, :cond_2

    .line 429
    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 434
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 436
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 437
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 438
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 439
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    .line 443
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 446
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSystemGestureExclusion()V

    .line 449
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 450
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 451
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x1388

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    .line 457
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    .line 458
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/LinearLayout;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 460
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonView(I)V

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSizeButtonResource()V

    return-void
.end method

.method private stickToScreenEdge(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonViewLayoutIfNeeded()V

    return-void
.end method

.method private stopFadeOutAnimation()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 467
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    :cond_0
    return-void
.end method

.method private toggleHorizontal()Z
    .locals 6

    .line 666
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_lock_magnification_horizontal_focus"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 666
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v2, v4

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 v5, v2, 0x1

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "AMFI"

    if-nez v2, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string v2, "On"

    invoke-static {v1, v0, v2}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string v2, "Off"

    invoke-static {v1, v0, v2}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setHorizontalButtonResource()V

    return v4
.end method

.method private toggleMagnificationMode()V
    .locals 4

    .line 533
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    xor-int/lit8 v0, v0, 0x3

    .line 535
    iput v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 537
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonView(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 540
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    const-string v2, "accessibility_magnification_mode"

    const/4 v3, -0x2

    .line 539
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 546
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    const-string v1, "AMFC"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "switch to full"

    invoke-static {p0, v1, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 549
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "switch to window"

    invoke-static {p0, v1, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAccessibilityWindowTitle()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 527
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateButtonView(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mHorizontalButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setHorizontalButtonResource()V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSizeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mModeButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateButtonViewLayoutIfNeeded()V
    .locals 4

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 519
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 521
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChangeWindowSize(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method onConfigurationChanged(I)V
    .locals 2

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues()V

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSizeButtonResource()V

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    .line 481
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateButtonView(I)V

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSizeButtonResource()V

    .line 485
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 491
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 493
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    return-void

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateAccessibilityWindowTitle()V

    :cond_2
    return-void
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish(FF)Z
    .locals 2

    .line 365
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 367
    div-int/lit8 p1, p1, 0x2

    .line 368
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    .line 371
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    if-nez p1, :cond_2

    .line 372
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(I)V

    .line 374
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    return p2
.end method

.method public onSingleTap()Z
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->handleSingleTap()V

    return v0
.end method

.method public onStart(FF)Z
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    const/4 p0, 0x1

    return p0
.end method

.method removeButton()V
    .locals 3

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    .line 401
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 402
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mButtonView:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 403
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 404
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 405
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method showButton(I)V
    .locals 1

    const/4 v0, 0x1

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(IZ)V

    return-void
.end method
