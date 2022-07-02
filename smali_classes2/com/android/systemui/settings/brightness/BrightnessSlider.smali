.class public Lcom/android/systemui/settings/brightness/BrightnessSlider;
.super Lcom/android/systemui/util/ViewController;
.source "BrightnessSlider.java"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;,
        Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/settings/brightness/BrightnessSliderView;",
        ">;",
        "Lcom/android/systemui/settings/brightness/ToggleSlider;"
    }
.end annotation


# static fields
.field private static final VOICE_ASSISTANT_ENABLED_URI:Landroid/net/Uri;

.field private static mUsingHighBrightnessDialogEnabled:Z


# instance fields
.field private BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

.field private final mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mIconAnimationValue:F

.field private mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSliderEnabled:Z

.field private mSliderNeedToDisabled:Z

.field private mTracking:Z

.field private mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public static synthetic $r8$lambda$cCBwG8de0sINH-STfIK_HM6QI-I(Lcom/android/systemui/settings/brightness/BrightnessSlider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "enabled_accessibility_services"

    .line 80
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->VOICE_ASSISTANT_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderNeedToDisabled:Z

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    .line 99
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    .line 276
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 123
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    sget p2, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 126
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSlider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setSeekBarContentDescription(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/settings/brightness/BrightnessSlider;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderNeedToDisabled:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderNeedToDisabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/content/Context;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mTracking:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mTracking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->isAutoChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialogEnabled:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 69
    sput-boolean p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialogEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->showUsingHighBrightnessDialog()V

    return-void
.end method

.method private copyEventToMirror(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->mirrorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method private isAutoChecked()Z
    .locals 3

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "enabled_accessibility_services"

    .line 127
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setSeekBarContentDescription(I)V

    :cond_0
    return-void
.end method

.method private playBrightnessIconAnimation(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    .line 411
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 412
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mIconAnimationValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 413
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mIconAnimationValue:F

    .line 414
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V
    .locals 1

    .line 201
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getMax()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSlider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    :goto_0
    return-void
.end method

.method private setSeekBarContentDescription(I)V
    .locals 1

    .line 401
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showUsingHighBrightnessDialog()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_using_high_brightness_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_using_high_brightness_dialog_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 465
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateSliderEnabled(Z)V
    .locals 4

    .line 525
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->getSystemBrightnessEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 526
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSliderEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSystemBrightnessEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToggleSlider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 528
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    if-eq p1, v1, :cond_2

    .line 529
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSliderListener()V

    :cond_2
    return-void
.end method

.method private updateSliderListener()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result p0

    return p0
.end method

.method public initBrightnessIconResources()V
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    const-string v0, "brightness_icon_85_darkmode.json"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "setting_brightness_85.json"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 427
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->animated_brightness_icon_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string/jumbo v2, "normal"

    const-string v3, "**"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v4, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_4
    return-void
.end method

.method public mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->copyEventToMirror(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPanelColorChanged()V
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->onPanelColorChanged()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pms_notification_panel_brightness_adjustment"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSystemBrightnessEnabled(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "shown_max_brightness_dialog"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateUsingHighBrightnessDialog(Z)V

    .line 152
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BRIGHTNESS_PERSONAL_CONTROL:Z

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_brightness_mode_pms_enter"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateHighBrightnessModeEnter(Z)V

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display_outdoor_mode"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateOutdoorMode(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSliderHeight()V

    .line 163
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    sget-object v3, Lcom/android/systemui/settings/brightness/BrightnessSlider;->VOICE_ASSISTANT_ENABLED_URI:Landroid/net/Uri;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 174
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setMax(I)V

    .line 242
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p0, :cond_0

    .line 243
    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getToggleSlider()Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 230
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->BRIGHTNESS_DIALOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public setToggleDetailListener(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setToggleDetailListener(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setValue(I)V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setSeekBarContentDescription(I)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->playBrightnessIconAnimation(I)V

    return-void
.end method

.method public updateDualSeekBar(Z)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    return-void
.end method

.method public updateHighBrightnessModeEnter(Z)V
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHighBrightnessModeEnter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", slider is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setHighBrightnessModeEnter(Z)V

    :cond_0
    return-void
.end method

.method public updateOutdoorMode(Z)V
    .locals 2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOutdoorMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p1, 0x1

    .line 473
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSliderEnabled(Z)V

    .line 474
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateOutdoorMode(Z)V

    return-void
.end method

.method public updateSliderHeight()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessSliderHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    return-void
.end method

.method public updateSystemBrightnessEnabled(Z)V
    .locals 2

    .line 480
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mTracking:Z

    const-string v1, "ToggleSlider"

    if-eqz v0, :cond_0

    const-string v0, "Can\'t using updateSystemBrightnessEnabled() now."

    .line 482
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p1, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderNeedToDisabled:Z

    if-nez p1, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setSystemBrightnessEnabled(Z)V

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    if-eq v0, p1, :cond_2

    .line 492
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mSliderEnabled:Z

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->updateSliderListener()V

    goto :goto_0

    :cond_1
    const-string p0, "Can\'t using updateSystemBrightnessEnabled() : slider is null."

    .line 496
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public updateUsingHighBrightnessDialog(Z)V
    .locals 0

    .line 445
    sput-boolean p1, Lcom/android/systemui/settings/brightness/BrightnessSlider;->mUsingHighBrightnessDialogEnabled:Z

    return-void
.end method
