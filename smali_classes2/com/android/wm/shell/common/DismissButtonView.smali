.class public Lcom/android/wm/shell/common/DismissButtonView;
.super Landroid/widget/LinearLayout;
.source "DismissButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/DismissButtonView$DismissType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityTextResId:I

.field private mCurrentFontScale:F

.field private final mDismissArea:Landroid/graphics/Rect;

.field private mDismissType:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

.field private mEnterAnimation:Landroid/view/animation/Animation;

.field private mEnterDismissButton:Z

.field private mFocusChangeHapticDisabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHideAnimationEnd:Ljava/lang/Runnable;

.field private mIconView:Landroid/widget/ImageView;

.field private mInsets:Landroid/graphics/Insets;

.field private mInsideHideAnimation:Landroid/view/animation/Animation;

.field private mIsNightModeOn:Z

.field private mNeedToRemoveWindow:Z

.field private mOutsideHideAnimation:Landroid/view/animation/Animation;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mSineOut60:Landroid/view/animation/Interpolator;

.field private final mStableRect:Landroid/graphics/Rect;

.field private mTextView:Landroid/widget/TextView;

.field private mVisible:Z

.field private mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$a6hVMApvbM9OCjAyF10A6BcBybg(Lcom/android/wm/shell/common/DismissButtonView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->lambda$animate$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x80000000

    .line 54
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterDismissButton:Z

    .line 65
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 66
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowAdded:Z

    .line 67
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHandler:Landroid/os/Handler;

    .line 71
    sget-object p1, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->NONE:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mStableRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsets:Landroid/graphics/Insets;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Insets;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/view/WindowManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mStableRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/common/DismissButtonView;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private animate(Z)V
    .locals 4

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 239
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    const v2, 0x3f4ccccd    # 0.8f

    .line 240
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mSineOut60:Landroid/view/animation/Interpolator;

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/common/DismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonView;Z)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animate$0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 244
    iget v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    if-lez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateResources(Z)V

    return-void
.end method

.method private performFocusChangeHaptic()V
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mFocusChangeHapticDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x29

    .line 366
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private transitionTo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x3f933333    # 1.15f

    .line 268
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 270
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 272
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 273
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 274
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private updateNightModeUI()V
    .locals 3

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 393
    sget v0, Lcom/android/wm/shell/R$drawable;->dismiss_button_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 394
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$color;->dismiss_button_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$color;->dismiss_button_icon_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateResources(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 253
    sget p1, Lcom/android/wm/shell/R$drawable;->dismiss_button_bg_over:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 254
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->dismiss_button_text_color_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 254
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$color;->dismiss_button_icon_color_focused:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 256
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 260
    :cond_0
    sget p1, Lcom/android/wm/shell/R$drawable;->dismiss_button_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 261
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->dismiss_button_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$color;->dismiss_button_icon_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 262
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateTextSizeWithScale()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dismiss_button_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 133
    iget v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    invoke-static {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropUtil;->calculateFontSizeWithScale(FF)F

    move-result v0

    .line 134
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public cleanUpDismissTarget()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 333
    sget-object p0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    const-string v0, "cleanUpDismissTarget  mRoot=null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_0
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpDismissTarget  isAttachedToWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    .line 340
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    .line 342
    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mRoot:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 344
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowAdded:Z

    goto :goto_0

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowAdded:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public createOrUpdateWrapper(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 313
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createOrUpdateWrapper  isAttachedToWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    .line 317
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mRoot:Landroid/widget/FrameLayout;

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowAdded:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 283
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa2d

    const v4, 0x1000338

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v0, "dismiss-button-overlay"

    .line 295
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 298
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x0

    .line 299
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x1

    .line 300
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 302
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 304
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 305
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 306
    iget p0, v0, Landroid/graphics/Point;->x:I

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 307
    iget p0, v0, Landroid/graphics/Point;->y:I

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const p0, 0x800033

    .line 308
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v6
.end method

.method public getDismissArea()Landroid/graphics/Rect;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hide(Ljava/lang/Runnable;)V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 166
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    const-string v1, "already mVisible=false but the callback should be run."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 177
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 180
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->isEnterDismissButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    .line 185
    :goto_1
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    .line 186
    new-instance p1, Lcom/android/wm/shell/common/DismissButtonView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView$2;-><init>(Lcom/android/wm/shell/common/DismissButtonView;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x4

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    sget v0, Lcom/android/wm/shell/R$id;->dismiss_button_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIconView:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/android/wm/shell/R$id;->dismiss_button_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$interpolator;->sine_in_out_60:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mSineOut60:Landroid/view/animation/Interpolator;

    .line 99
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$anim;->dismiss_button_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 100
    new-instance v1, Lcom/android/wm/shell/common/DismissButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/DismissButtonView$1;-><init>(Lcom/android/wm/shell/common/DismissButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$anim;->entered_dismiss_button_hide:I

    .line 118
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsideHideAnimation:Landroid/view/animation/Animation;

    .line 119
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$anim;->dismiss_button_hide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mOutsideHideAnimation:Landroid/view/animation/Animation;

    .line 121
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mWindowManager:Landroid/view/WindowManager;

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 124
    invoke-direct {p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateTextSizeWithScale()V

    return-void
.end method

.method public isEnterAnimating()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnterDismissButton()Z
    .locals 0

    .line 279
    iget-boolean p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterDismissButton:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 352
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 354
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow  mNeedToRemoveWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mNeedToRemoveWindow:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->cleanUpDismissTarget()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    if-eq v1, v0, :cond_1

    .line 379
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mIsNightModeOn:Z

    .line 380
    invoke-direct {p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateNightModeUI()V

    .line 382
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 383
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mCurrentFontScale:F

    .line 384
    invoke-direct {p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateTextSizeWithScale()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonView;->init()V

    return-void
.end method

.method public setAccessibilityText(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mAccessibilityTextResId:I

    return-void
.end method

.method public setDismissType(Lcom/android/wm/shell/common/DismissButtonView$DismissType;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    return-void
.end method

.method public setFocusChangeHapticDisable(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mFocusChangeHapticDisabled:Z

    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public show(Landroid/graphics/Insets;)V
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 150
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mInsets:Landroid/graphics/Insets;

    .line 152
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateView(Landroid/graphics/Rect;)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 209
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(ZZ)V

    return-void
.end method

.method public updateView(ZZ)V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterDismissButton:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 217
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->animate(Z)V

    .line 218
    invoke-direct {p0}, Lcom/android/wm/shell/common/DismissButtonView;->performFocusChangeHaptic()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->updateResources(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DismissButtonView;->transitionTo(Z)V

    .line 225
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/common/DismissButtonView;->mDismissType:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->DND:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    if-ne p2, v0, :cond_3

    .line 227
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2, v0}, Landroid/view/IWindowManager;->setDragSurfaceToOverlay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 229
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed to setDragSurfaceToOverlay."

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissButtonView;->mEnterDismissButton:Z

    return-void
.end method
