.class public Lcom/android/systemui/settings/brightness/BrightnessSliderView;
.super Landroid/widget/FrameLayout;
.source "BrightnessSliderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;
    }
.end annotation


# instance fields
.field private mBrightnessDetailView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDualSeekBarBackgroundcolor:I

.field private mDualSeekBarForegroundColor:I

.field private mDualSeekBarThreshold:I

.field private mIsSliderWarning:Z

.field private mIsTouchSlider:Z

.field private mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

.field private mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field private mOutdoorMode:Z

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mScale:F

.field private mSeekBarBackgroundcolor:I

.field private mSeekBarForegroundColor:I

.field private mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field private mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

.field private mTouchDownDetailView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 56
    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 87
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applySliderScale()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 314
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 315
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private isTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 192
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

    .line 193
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

.method private updateSliderResources()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->sec_brightness_slider_warning_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

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

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 342
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->sec_brightness_dual_slider_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarBackgroundcolor:I

    .line 343
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->sec_brightness_dual_slider_foreground_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarForegroundColor:I

    .line 344
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->tw_progress_color_control_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSeekBarBackgroundcolor:I

    .line 345
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->tw_progress_color_control_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSeekBarForegroundColor:I

    .line 346
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 161
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    goto/16 :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_3

    return v1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDragging(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->getDragging()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;->setDetailViewClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDetailViewTouch(Z)V

    goto/16 :goto_0

    .line 164
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->getDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

    if-eqz v0, :cond_5

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;->setDetailViewClickable(Z)V

    .line 169
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 170
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1, v2}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDetailViewTouch(Z)V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDragging(Z)V

    return v1

    .line 176
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDetailViewTouch(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDragging(Z)V

    goto :goto_0

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "BrightnessSliderView"

    const-string p1, "ACTION_DOWN: Slider and detail not touched"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 141
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mTouchDownDetailView:Z

    .line 144
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setDetailViewTouch(Z)V

    .line 182
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDualSeekBarThreshold()I
    .locals 0

    .line 362
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    return-object p0
.end method

.method public getSliderScaleY()F
    .locals 0

    .line 320
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public isTouchSlider()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 95
    sget v0, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->brightness_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 104
    sget v1, Lcom/android/systemui/R$id;->slider_foreground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_brightness_slider_side_padding_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 292
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    return-void
.end method

.method public onPanelColorChanged()V
    .locals 2

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->sec_brightness_progress_drawable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    if-eqz p0, :cond_0

    .line 201
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setDualSeekBarResources(Z)V
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsSliderWarning:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_1

    .line 352
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsSliderWarning:Z

    .line 355
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->sec_brightness_progress_warning_drawable:I

    goto :goto_0

    .line 356
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->sec_brightness_progress_drawable:I

    .line 355
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOutdoorMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 226
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    return-void
.end method

.method public setOnDispatchTouchEventListener(Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderView$DispatchTouchEventListener;

    return-void
.end method

.method public setOnInterceptListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setSliderScaleY(F)V
    .locals 1

    .line 304
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 305
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    :cond_0
    return-void
.end method

.method public setToggleDetailListener(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public updateOutdoorMode(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOutdoorMode:Z

    .line 373
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method
