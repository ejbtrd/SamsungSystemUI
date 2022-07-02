.class public Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetailSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# static fields
.field private static mUsingHighBrightnessDialogEnabled:Z


# instance fields
.field private BRIGHTNESS_DETAIL_SLIDER_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDualSeekBarThreshold:I

.field private mHighBrightnessModeEnter:Z

.field private mHighBrightnessModeToast:Landroid/widget/Toast;

.field private mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field private mOutdoorMode:Z

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field private mSliderDisableToast:Landroid/widget/Toast;

.field private mSliderEnabled:Z

.field private mSystemBrightnessEnabled:Z

.field private mTracking:Z

.field private mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 44
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->BRIGHTNESS_DETAIL_SLIDER_TAG:Ljava/lang/String;

    .line 136
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->showSliderDisabledToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->isAutoChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->showHighBrightnessModeToast()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 33
    sput-boolean p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->showUsingHighBrightnessDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-object p0
.end method

.method private isAutoChecked()Z
    .locals 3

    .line 280
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

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

.method private setDualSeekBarResources()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->sec_brightness_slider_warning_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    .line 119
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->sec_brightness_dual_slider_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->sec_brightness_dual_slider_foreground_color:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 122
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, v0, v1}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    :cond_0
    return-void
.end method

.method private showHighBrightnessModeToast()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_slider_hbm_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 302
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSliderDisabledToast()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_slider_disabled_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 293
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showUsingHighBrightnessDialog()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 309
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_using_high_brightness_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_using_high_brightness_dialog_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateSliderEnabled(Z)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSliderEnabled() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemBrightnessEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDetailSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 272
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eq v0, p1, :cond_1

    .line 274
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateSliderListener()V

    :cond_1
    return-void
.end method

.method private updateSliderListener()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_1

    .line 266
    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->BRIGHTNESS_DETAIL_SLIDER_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public initBrightnessIconResources()V
    .locals 0

    return-void
.end method

.method public isSliderEnabled()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    return p0
.end method

.method public mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->detail_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_brightness_slider_disabled_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pms_notification_panel_brightness_adjustment"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateSystemBrightnessEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_max_brightness_dialog"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateUsingHighBrightnessDialog(Z)V

    .line 70
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BRIGHTNESS_PERSONAL_CONTROL:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateHighBrightnessModeEnter(Z)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_outdoor_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateOutdoorMode(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateResources()V

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 184
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setDualSeekBarResources()V

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public updateDualSeekBar(Z)V
    .locals 0

    return-void
.end method

.method public updateHighBrightnessModeEnter(Z)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHighBrightnessModeEnter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDetailSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    return-void
.end method

.method public updateOutdoorMode(Z)V
    .locals 2

    .line 244
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mOutdoorMode:Z

    .line 245
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateSliderEnabled(Z)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setDualSeekBarResources()V

    return-void
.end method

.method public updateSystemBrightnessEnabled(Z)V
    .locals 1

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    if-eq v0, p1, :cond_0

    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderEnabled:Z

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->updateSliderListener()V

    :cond_0
    return-void
.end method

.method public updateUsingHighBrightnessDialog(Z)V
    .locals 0

    .line 239
    sput-boolean p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    return-void
.end method
